from GetTime import test1
import datetime
import time
import jieba
import sys,os,io
import jieba.posseg as pseg
import pickle
from collections import defaultdict
import time, re
from getIndex import index_main
from Roles import monthDays
from GetTime import get_all_time
from dict_table import ndzcfzb2Zhi,xjllb2Zhi,lrb2Zhi
# text = '2017年3月大盘表现？'
'''
1、公司名
2、时间
3、指标

time = ()-()
zhibiao = (index,relation,value)
1+2+3
1+2
1
1+3 = 时间默认为今年
'''
date_dict={
    (1,2,3):'1',
    (4,5,6):'2',
    (7,8,9):'3',
    (10,11,12):'4'
}

tables = ['t_finance_asset','t_finance_cash','t_finance_profit']
dics = [ndzcfzb2Zhi,xjllb2Zhi,lrb2Zhi]
measure_dict = {
    ('高于','大于','超过','超出','最低'):">=",
    ('低于','小于','',):"<=",
    ('等于'):'='
}


def add_org(filename):
    with open(filename,'r',encoding='utf8') as f:
        lines = f.readlines()
        for row in lines:
            row =row.strip().split(",")
            if len(row)==2:
                jieba.add_word(row[0],tag=row[1])
                jieba.suggest_freq(row[0])



def get_quarter(time1):
    t = datetime.datetime.strptime(time1, '%Y-%m-%d')
    y,m,d = t.year,t.month,t.day
    # print(date_dict.keys)
    # print(y,m,d)
    for kk in date_dict.keys():
        for k in kk:
            if m== k:
                return str(y)+"-"+str(kk[-1])+"-"+str(monthDays.get(kk[-1]))

def process_time(text):
    time_ = get_all_time(text)
    if  time_!='-1':
        time1 = time_.split("--")[0]
        time2 = time_.split("--")[1]
        if time1==time2:
            res = get_quarter(time1)
            return [res]
        else:
            time1 = get_quarter(time1)
            time2 = get_quarter(time2)
            return [time1,time2]
    else:
        return []

# sql = 'select %s,%s,%s from %s'

def get_index(text):
    res = index_main(text)
    return res

def get_company(text):
    l1,l2 = [],[]
    res = []
    add_org("D:/sent2sql/company.txt")
   # add_org(os.getcwd() + os.path.sep + 'company.txt')
    words = jieba.posseg.cut(text)
    for word in words:
        l1.append(word.word)
        l2.append(word.flag)
    res =[l1[i] for i in range(len(l2)) if 'org'==l2[i]]
    if len(res)<1:
        return None
    else:
        return res

#表字段名，和表名
def find_table_by_index(index):
    for dic in [ndzcfzb2Zhi,lrb2Zhi,xjllb2Zhi]:
        # if dic.get(index):
        name = [k for k, v in dic.items() if v == index]
        if name:
            table =tables[dics.index(dic)]
            return  name[0],table
    return 'NETPROFIT','t_finance_profit'
def find_relation_by_index(index):
    if index =="":
        return None
    else:
        for dic in measure_dict:
            if index in dic:
                return measure_dict.get(dic)

    return None
def process_asc_and_desc(index):
    ASC = ['最高', "靠前", '最好', '最多', '大于', '超过', '前']
    DESC = ['最低', '靠后', '最差', '最少', '少于', '差']
    flag = 1
    if flag:
        for i in ASC:
            if i in index:
                return "DESC"
    if flag:
        for i in DESC:
            if i in index:
                return "ASC"
    if flag != 0:
        return "DESC"



def process_ntime_ncmp_order(sql,index,name,table):
    ASC = ['最高', "靠前", '最好', '最多', '大于', '超过', '前']
    DESC = ['最低', '靠后', '最差', '最少', '少于', '差']
    flag = 1
    if flag:
        for i in ASC:
            if i in index:
                sql = sql + " WHERE SUBSTRING(t2.ts_code, 1, 6)=t1.company_symbol ORDER BY t1.{0} DESC".format(name)
                sql = sql + " limit 200"
                print(index[0] + "&" + sql)
                flag = 0
                break
    if flag:
        for i in DESC:
            if i in index:
                sql = sql + " WHERE SUBSTRING(t2.ts_code, 1, 6)=t1.company_symbol ORDER BY t1.{0} ASC".format(name)
                sql = sql + " limit 200"
                print(index[0] + "&" + sql)
                flag = 0
                break
    if flag != 0:
        sql = sql.format(name,table)
        print(sql)
        sql1 = "select DISTINCT company_symbol,{0} ,reportdate  from {1}   order by {2} DESC limit 200"
        sql1 = sql1.format(name, table, name)
        sql = sql + " , ({0}) t2 where  t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6) ORDER BY {1}  DESC limit 200 ".format(sql1, name)
        print(index[0] + "&" + sql)
    return


def main():
    args = sys.argv
    length = len(args)
    if length<2:
        return
    text = sys.argv[-1]
    # text = '信雅达2018年第一季度净利润大于10'
    time_ = process_time(text)
    index = get_index(text)
    company = get_company(text)
    if company!=None and time_!=[]:
        companyname = "SELECT LEFT(ts_code,6) FROM companylist WHERE name ='{}'".format(company[0])
        defaultsql = "select DISTINCT company_symbol, reportdate, NETPROFIT from t_finance_profit where  company_symbol in  (" + companyname + ") ORDER BY REPORTDATE desc "
        if len(time_)==1 and len(company)==1 and len(index)==3:
            sql = "select DISTINCT company_symbol, reportdate, {0} from {1}  where  company_symbol in   ("+companyname+")  and reportdate = '{2}'"
            name, table = find_table_by_index(index[0])
            symbol = find_relation_by_index(index[1])
            value = index[-1]
            if index[0]!='':
                sql = sql.format(name,table,time_[0])
                if value and symbol:
                    sql = sql + " and " + name + symbol + value + " ORDER BY REPORTDATE desc "
                    print(index[0]+"&"+sql)
                    return
                else:
                    print(index[0]+"&"+sql)
                    return
            else:
                sql = "select DISTINCT company_symbol, reportdate, NETPROFIT AS companyValue from t_finance_profit  where  company_symbol in  ("+companyname+")  and (reportdate ) ='{}'"
                sql= sql.format(time_[0])
                print("净利润&"+sql)
                return
        elif len(time_)==2 and len(company)==1:
            sql = "select DISTINCT company_symbol ,reportdate, {0} AS companyValue from {1}  where  company_symbol in   ("+companyname+") and (reportdate between date_format('{2}', '%Y-%m-%d') and date_format('{3}', '%Y-%m-%d'))"
            name, table = find_table_by_index(index[0])
            symbol = find_relation_by_index(index[1])
            value = index[-1]
            if index[0]!='':
                sql = sql.format(name,table,time_[0],time_[-1])
                if value and symbol:
                    sql = sql + " and " + name + symbol + value + " ORDER BY REPORTDATE desc "
                    print(index[0]+"&"+sql)
                    return
                else:
                    print(index[0]+"&"+sql)
                    return
            else:
                sql = "select DISTINCT company_symbol ,reportdate, NETPROFIT AS companyValue  from t_finance_profit  where  company_symbol in   ("+companyname+") and (reportdate between date_format('{0}', '%Y-%m-%d') and date_format('{1}', '%Y-%m-%d'))"
                sql= sql.format(time_[0],time_[-1])
                sql += ' ORDER BY REPORTDATE desc'
                print("净利润&"+sql)
                return
        else:
            print(defaultsql)
            return
    elif company!=None:
        companyname = "SELECT LEFT(ts_code,6) FROM companylist WHERE name ='{}'".format(company[0])
        name, table = find_table_by_index(index[0])
        symbol = find_relation_by_index(index[1])
        value = index[-1]
        if index[0] != '':
            sql = "select DISTINCT company_symbol ,reportdate ,{0} AS companyValue from {1}  where  company_symbol in  ("+companyname+")  ORDER BY REPORTDATE desc "
            # sql = sql.format(name, table)
            if symbol and value:
                sql = "select DISTINCT company_symbol ,reportdate, {0} AS companyValue  from {1}  where  company_symbol in   ("+companyname+") "+ name + symbol + value+"  ORDER BY REPORTDATE desc "
                sql = sql.format(name, table)
                print(index[0]+"&"+sql)
                return
            else:
                sql ="select DISTINCT company_symbol ,reportdate, {0} AS companyValue from {1}  where  company_symbol in   ("+companyname+") "+"  ORDER BY REPORTDATE desc "
                sql = sql.format(name, table)
                print(index[0]+"&"+sql)
                return
        else:
            sql = "select DISTINCT company_symbol, reportdate ,NETPROFIT AS companyValue from t_finance_profit where  company_symbol in  ("+companyname+")   ORDER BY REPORTDATE desc "
            print("净利润&"+sql)
            return
    elif company==None:
        # companyname = "SELECT LEFT(ts_code,6) FROM companylist WHERE name ='{}'".format(company[0])
        if index[0]!="":
            name, table = find_table_by_index(index[0])
            symbol = find_relation_by_index(index[1])
            value = index[-1]
            if symbol and value:
                sql = "select DISTINCT company_symbol,reportdate ,{0} from {1} where ".format(name,table)
                sql=sql+name+symbol+value
                if len(time_)==1:
                    sql_ = sql+ " and reportdate = date_format('{0}', '%Y-%m-%d')".format(time_[0])
                    sql = "select  LEFT(t1.ts_code,6) as COMPANY_SYMBOL,  t1.name as companyName ,t2.{0} as companyValue,t2.reportdate  from companylist t1 ,({1}) t2  where t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6)"
                    sql =sql.format(name,sql_)
                    print(index[0]+"&"+sql)
                    return
                if len(time_)==2:
                    sql_ =sql+" and reportdate between date_format('{0}', '%Y-%m-%d') and date_format('{1}', '%Y-%m-%d')".format(time_[0],time_[1])
                    sql = "select  LEFT(t1.ts_code,6) as COMPANY_SYMBOL,  t1.name as companyName ,t2.{0} as companyValue,t2.reportdate  from companylist t1 ,({1}) t2  where t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6)"
                    sql = sql.format(name, sql_)
                    print(index[0]+"&"+sql)
                    return
                else:
                    sql1 = "select  LEFT(t1.ts_code,6) as COMPANY_SYMBOL,  t1.name as companyName ,t2.{0} as companyValue,t2.reportdate  from companylist t1 ,({1}) t2  where t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6)"
                    sql = sql1.format(name, sql)
                    print(index[0]+"&"+sql)
                    return
            else:
                sql = "select DISTINCT SUBSTRING(t1.ts_code, 1, 6) as company_symbol ,t1.name as companyName,t2.reportdate,t2.{0} AS companyValue from companylist t1 "
                sql = sql.format(name)
                res = process_asc_and_desc(index)
                if len(time_)==1:
                    sql1 = "select DISTINCT company_symbol,{0} ,reportdate  from {1}  where REPORTDATE = date_format('{2}', '%Y-%m-%d') order by {3} {4} limit 200"
                    sql1 =sql1.format(name,table,time_[0],name,res)
                    sql = sql+" , ({0}) t2 where  t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6) ORDER BY {1} {2} ".format(sql1,name,res)
                    print(index[0]+"&"+sql)
                    return
                elif len(time_)==2:
                    # sql = sql+ " where reportdate between date_format('{0}', '%Y-%m-%d') and date_format('{1}', '%Y-%m-%d')".format(time_[0],time_[1])+"  and SUBSTRING(t2.ts_code, 1, 6)=t1.company_symbol order by t1.{0} {1}  limit 100".format(name,res)
                    sql1 = "select DISTINCT company_symbol,{0} ,reportdate  from {1}  where REPORTDATE between date_format('{2}', '%Y-%m-%d') and date_format('{3}', '%Y-%m-%d') order by {4} {5} limit 200"
                    sql1 =sql1.format(name,table,time_[0],time_[1],name,res)
                    sql = sql + " , ({0}) t2 where  t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6) ORDER BY {1} {2} ".format(sql1, name, res)
                    print(index[0]+"&"+sql)
                    return
                else:
                    process_ntime_ncmp_order(sql, index, name,table)
        else:
            print('')
            return
            pass
    else:
        print('')
        pass




main()
if __name__ == '__main__':
    pass