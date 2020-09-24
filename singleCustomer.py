import pdfplumber
import re
import hashlib
import pymysql
import pandas as pd
import numpy as np

def get_start_page(pdf,char_mark):
    flag = 0
    start = 0
    for i in range(0, len(pdf.pages)):
        words = pdf.pages[i].extract_words()
        for word in words:
            if char_mark in word['text']:
            # if re.findall('([\(|（]\w{1}[\)|）]\s*{0})'.format(char_mark),word['text']):
                flag = 1
                break
        if flag == 1:
            start = i
            break
    return start

def get_app_fundament_eval_table(pdf,title):
    start = get_start_page(pdf,title)
    res = []
    flag = 0
    for i in range(start,len(pdf.pages)):
        tables = pdf.pages[i].extract_tables()
        for table in tables:
            if title in table[0]:
                res +=table
                flag = 1
                break
        if flag ==1:
            break
    tables = pdf.pages[i+1].extract_tables()
    if len(tables)>=1:
        res+=tables[0]
    return res

def get_base_state_table(pdf,title,end_mark):
    start = get_start_page(pdf,title)
    res = []
    flag = 0
    # for i in range(start,len(pdf.pages)):

    tables = pdf.pages[start].extract_tables()
    for table in tables:
        if title in table[0]:
            # res +=table
            res.append(table)
            flag =1
            continue
        if flag:
            # res+=table
            res.append(table)
    tables = pdf.pages[start+1].extract_tables()
    for table in tables:
        if end_mark not in table[0]:
            # res += table
            res.append(table)
            break
        else:
            break
    return res

def generate_id(filename):
    m = hashlib.md5()
    m.update(bytes(filename, encoding='utf-8'))
    return m.hexdigest()

def dbconnect():
    db = pymysql.connect(host="localhost", user="root", passwd="root", db="zsbank", use_unicode=True, charset="utf8")
    return db
def get_table_field(name,database):
    db = dbconnect()
    cursor = db.cursor()
    sql = 'select column_name from Information_schema.columns  where table_Name = "{0}" and table_schema ="{1}"'.format(name,database)
    cursor.execute(sql)
    data = cursor.fetchall()
    table_field_list = []
    for record in data:
        table_field_list.append(record[0])
    cursor.close()
    return db,table_field_list

def get_insert_sql(data_table_name,database="zsbank"):
    db,table_field_list = get_table_field(data_table_name,database)
    table_field = ','.join(table_field_list)
    ss = ['%s']*len(table_field_list)
    ss = ','.join(ss)
    insert_sql = "insert into  {0}({1}) values ({2})".format(data_table_name,table_field,ss)
    return db,insert_sql


def process_evaluate_table(data):
    res = []
    for d in data:
        if d[0].find("主要财务数据")!=-1:
            index1= data.index(d)
        if d[0].find("重要风险指标")!=-1:
            index2 = data.index(d)
    tmp = data[index1+1:index2]
    df = pd.DataFrame(tmp[1:],columns = tmp[0])
    length = len(tmp[0])
    for i in range(1,length):
        k = []
        t1 = df.ix[:, [i]].values.tolist()
        t2 = [i[0] for i in t1]
        k.append(ID)
        k.append(tmp[0][i].split("\n")[0])
        k.extend(t2)
        res.append(k)
    return res

def insert_id(r,table):
    if table[-1][0]=="…":
        table = table[:-1]
    for i in table:
        i.insert(0, ID)
        r.append(i)

def process_base_state_table(table_list):
    data1 = table_list[0]
    r1,r2,r3,r4= [ID],[],[],[]
    # if len(data1[0][0])==4:
    for d in data1:
        if d[0].find("受信客户基本情况")!=-1:
            index1= data1.index(d)
            # print(index1)
        if "贷款卡号或中征码" in d:
            index2 = data1.index(d)+1
            break
    for d in data1[index2:]:
        if d[0].find("…") != -1:
            index3 = data1.index(d)
            break
        if d[0].find("受信客户") != -1:
            index3 = data1.index(d)
            break
    table1 = data1[index1 + 1:index2]
    if index3-index2>=1:
        table2 = data1[index2+1:index3]
    else:
        table2 = data1[index2+1]
    table3 = table_list[1]
    table4 = table_list[2]
    if len(table1[0][0])==4:
        tmp1= [[t[1],t[-1]] for t in table1]
    elif len(table1[0][0])==6:
        tmp1= [[t[2],t[-2]] for t in table1]
    [r1.extend(i) for i in tmp1]
    insert_id(r2,table2)
    insert_id(r3,table3[1:])
    insert_id(r4,table4[1:])

    return [r1,r2,r3,r4]

def exec_sql(db,insert_sql,res):
    cur = db.cursor()
    try:
        if len(res)>=1 and isinstance(res,list) and isinstance(res[0],list):
            cur.executemany(insert_sql, res)
        else :
            # print("insert_sql",insert_sql)
            cur.execute(insert_sql,res)
        db.commit()
    except Exception as e:
        db.rollback()
        print('res11',res)
        print(e)
    finally:
        cur.close()
    cur.close()
    db.close()


def main():
    if 0:
        table_list = get_app_fundament_eval_table(pdf,'经营概况')
        res = process_evaluate_table(table_list)
        db,insert_sql = get_insert_sql("fundamental_evaluate",'zsbank')
        exec_sql(db,insert_sql,res)
    if 1:
        table_list = get_base_state_table(pdf,'受信客户基本情况','受信客户经营情况')
        res_all = process_base_state_table(table_list)
        sql_table = ["cust_base_state","stockholder",'group_main_income_struct','basic_finance_situate_group_core']
        for res in res_all:
            db, insert_sql = get_insert_sql(sql_table[res_all.index(res)])
            exec_sql(db, insert_sql, res)
            pass

if __name__ == '__main__':
    # filename = './附件1 浙商银行单一客户统一授信调查报告.pdf'
    import os
    path = r"C:/Users/MSLif/Desktop/word/pdf/"
    dir_file = os.listdir(
        path
    )
    for filename in dir_file:
        ID = generate_id(filename.split(".")[0])
        # print(filename,ID)
        # if filename !="sample_3.pdf":
        filename = path + filename
        # print(filename)
        pdf = pdfplumber.open(filename)
        main()


