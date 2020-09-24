import datetime
import time
import jieba
import sys,os,io
import jieba.posseg as pseg
import pickle
from collections import defaultdict
import time, re
from table_dict import funda_eval_table_dict,cust_base_state_dict,stockholder_dict
import pymysql

sql_table = ["cust_base_state", 'fundamental_evaluate',"stockholder"]
table_dic = [cust_base_state_dict,funda_eval_table_dict,stockholder_dict]


def get_all_company_by_sql():
    db = pymysql.connect(host="localhost", user="root", passwd="123456", db="sunfai-situation", use_unicode=True, charset="utf8")
    cursor = db.cursor()
    sql = 'select customer_name from cust_base_state '
    cursor.execute(sql)
    # result = cursor.fetchall()
    company = [r[0].strip().replace("\n",'') for r in cursor.fetchall()]
    cursor.close()
    db.close()
    return company

def add_zsindex(list_1,flag = None):
    res = []
    for i in list_1:
        if isinstance(i,dict):
            res.extend(i.keys())
    for r in res:
        jieba.add_word(r, tag=flag)
        jieba.suggest_freq(r)
    return res

def add_org(filename):
    with open(filename,'r',encoding='utf8') as f:
        lines = f.readlines()
        for row in lines:
            row =row.strip().split(",")
            if len(row)==2:
                jieba.add_word(row[0],tag=row[1])
                jieba.suggest_freq(row[0])

def get_company_property(words,zsindex,flag = None):
    l1,l2 = [],[]
    res = []
    for word in words:
        l1.append(word.word)
        l2.append(word.flag)
    res =[l1[i] for i in range(len(l2)) if flag==l2[i]]
    if len(res)<1:
        if flag =="zsindex":
            for word in words:
                for index in zsindex:
                    if len(word)>=2:
                        if index.find(word)!=-1:
                              return index
                        if edit(word,index)/len(index) < 0.21:
                            return index
        return None
    else:
        return res

def generate_id(filename):
    import hashlib
    m = hashlib.md5()
    m.update(bytes(filename, encoding='utf-8'))
    return m.hexdigest()

def edit(str1, str2):
    matrix = [[i + j for j in range(len(str2) + 1)] for i in range(len(str1) + 1)]

    for i in range(1, len(str1) + 1):
        for j in range(1, len(str2) + 1):
            if str1[i - 1] == str2[j - 1]:
                d = 0
            else:
                d = 1
            matrix[i][j] = min(matrix[i - 1][j] + 1, matrix[i][j - 1] + 1, matrix[i - 1][j - 1] + d)

    return matrix[len(str1)][len(str2)]


def match_name_by_company(name1,sql_company):
    flag = 0
    if len(name1)<1:
        flag = -1

    for n in sql_company:
        start = n.find(name1[0][0])
        if start!=-1:
            if name1[0] == n[start:start+len(name1[0])]:
                return generate_id(n)
    for na in sql_company:
        if na.find(name1[0])!=-1:
            flag =1
            break
    if flag>1:
        for nm in sql_company:
            length = min(len(nm,name1[0]))
            distance = edit(nm[:length],name1[:length])
            if distance/length < 0.5:
                flag = 2
                break
    elif flag==1:
        return generate_id(na)
    elif flag==2 or flag ==0:
        return generate_id("信雅达系统工程股份有限公司")

def find_table_by_index(index,zsindex,ID):
    table,field = "",''
    select_sql = "select customer_name,{0} as indicator from cust_base_state where id = '{1}'"
    if index==None:
        field = "legal_represent"
        select_sql = select_sql.format(field,ID)
        print(select_sql)
        return
    if len(index)==1:
        index = index[0]
        for d in table_dic:
            if d.get(index):
                i = table_dic.index(d)
                field = d.get(index)
                if i ==0:
                    select_sql = select_sql.format(field,ID)
                    print(select_sql)
                    return
                else:
                    select_sql = "select t1.customer_name,t1.{0} as indicator,t2.{1} as indicatorInfo from cust_base_state  t1,{2}  t2  where t1.id = '{3}' and  t2.id = '{4}'"
                    table = sql_table[i]
                    select_sql=select_sql.format('legal_represent',field,table,ID,ID)
                    print(select_sql)
                    return
                # elif i ==2:
                #     select_sql = "select customer_name,{0},t2.{1} from cust_base_state as t1,{2} as t2 where t1.id = '{3}' and  t2.id = '{4}'"
                #     table = sql_table[i]
                #     select_sql=select_sql.format('legal_represent',field,table,ID,ID)
                #     print(select_sql)
                #     return
                break

    if len(index)>=2:
        pass
    else:
        table = sql_table[0]
        field = "legal_represent"

def get_sql(index,zsindex):
    table ,field = find_table_by_index(index,zsindex)

def main():
    MODE =1
    if MODE ==1:
        args = sys.argv
        length = len(args)
        if length<2:
            return
        text = sys.argv[-1]
    else:
        text = '信雅达主要股东?'
    zsindex = add_zsindex(table_dic,flag="zsindex")
    add_org("D:/sent2sql/company.txt")
    # text = '云南白药集团股份有限公司的总资产是?'

    words = jieba.posseg.cut(text)

    sql_company = get_all_company_by_sql()
    company_name = get_company_property(words,zsindex,flag="org")
    words = jieba.posseg.cut(text)
    company_index = get_company_property(words,zsindex,flag="zsindex")
    # print(company_name)
    ID = match_name_by_company(company_name,sql_company)
    find_table_by_index(company_index,zsindex,ID)
    # select_sql = "select customer_name,"" from cust_base_state as t1 where id = {0}".format(id)
if __name__ == '__main__':
    main()
    pass