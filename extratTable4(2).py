import os
import sys,re
import pdfplumber
import pdfplumber
import pandas as pd
from pdfminer.layout import *
from pdfplumber.utils import extract_words
import pdfplumber
import re,os,sys
# from  decimal import Decimal
import math
from sqlalchemy import create_engine
from dict_table import *
import time
start = time.time()
# {'x0': Decimal('284.330'), 'x1': Decimal('337.130'), 'top': Decimal('104.949'), 'bottom': Decimal('115.509'), 'text': '合并利润表'}

title_range = {'x0':200,'x1':450}
time_range = title_range.values()
db_info = {'user': 'root',
           'password': 'root',
           'host': 'localhost',
           'port': 3306,
           'database': 'test'
           }

engine = create_engine('mysql+pymysql://%(user)s:%(password)s@%(host)s:%(port)d/%(database)s?charset=utf8' % db_info, encoding='utf-8')

table2dic=  {
    "资产负债表":'t_finance_asset',
    "合并资产负债表":'t_finance_asset',
    "现金流量表": 't_finance_cash',
    "合并现金流量表": 't_finance_cash',
    "利润表":'t_finance_profit',
    "合并利润表":'t_finance_profit',
}

pattern1 = "^.{0,4}资产负债表$"
pattern2 = "^.{0,4}利润表"
pattern3 = "^.{0,4}现金流量表"
time_pattern = '\d{2,4}年.*?月?.*?日?'
TIME = set()
COUNT = 0
tables = ['t_finance_asset','t_finance_cash','t_finance_profit']
dics = [ndzcfzb2Zhi,xjllb2Zhi,lrb2Zhi]

def find_table_by_index(index):
    for dic in [ndzcfzb2Zhi,lrb2Zhi,xjllb2Zhi]:
        # if dic.get(index):
        name = [k for k, v in dic.items() if v == index]
        if name:
            table =tables[dics.index(dic)]
            return  name[0],table
    return 'NETPROFIT','t_finance_profit'

def to_sql(table_list, table_name):
    for data in table_list:
        pass
    pass


def get_time():
        pass

def get_table_name(text):
    if table2dic.get(text):
        return table2dic.get(text)
    else:
        return None

# with pdfplumber.open("./data/600066宇通客车2017年年度报告.PDF") as pdf:
def get_title_location(i,pdf):
    page = pdf.pages[i]
    words = page.extract_words()
    tables = page.extract_tables()
    l1, l2 = [], []
    for i in range(len(words)):
        rows = words[i]
        word = rows['text'].strip()
        flag = 0
        if re.findall(pattern1, word) and re.findall(time_pattern, words[i + 1]['text'].strip()):
            l1.append(rows)
            TIME.add(words[i + 1]['text'])
        if re.findall(pattern2, word) and re.findall(time_pattern, words[i + 1]['text'].strip()):
            l1.append(rows)
            TIME.add(words[i + 1]['text'])
        if re.findall(pattern3, word) and re.findall(time_pattern, words[i + 1]['text'].strip()):
            l1.append(rows)
            TIME.add(words[i + 1]['text'])
    return l1,tables

def logic(code,l3,table,tables,l1):
    # global COUNT
    if len(l3) == 0 and len(tables) == 1:
        if len(table[0])==len(tables[0][0]):
            table += tables[0]
    elif len(l3) == 0 and len(tables) == 0:
        pass
    if len(l3) == 1 and len(tables) == 1:
        pass
    if len(l3) == 1 and len(tables) == 2:
        if len(table[0]) == len(tables[0][0]):
            table += tables[0]
    df = pd.DataFrame(table[1:])
    # # df = pd.DataFrame(table[1:], columns=table[0])
    # print(table)
    # print()
    if table2dic.get(l1[0]['text']):
        pd.io.sql.to_sql(df.T, code+table2dic.get(str(l1[0]['text'])), con=engine, index=False, if_exists='replace')
    return table

# from dbmysql import *
# def process_list(table,name):
#     dic = {}
#     db, table_name = get_table_name("t_finance_cash_copy")
#     for t in table:
#         dic[0]= dic[1:]
#
#     pass

def dihui(code,l1,table,pdf):
    global COUNT
    l2, tables = get_title_location(i + 1, pdf)
    if len(l2) == 0 and len(tables) == 1:
        if len(table[0]) == len(tables[0][0]):
            table += tables[0]
        l3, tables = get_title_location(i + 2, pdf)
        logic(code,l3, table, tables, l1)
        COUNT += 1
    elif len(l2) == 0 and len(tables) == 0:
        df = pd.DataFrame(table[1:], columns=table[0])
        COUNT += 1
        if table2dic.get(l1[0]['text']):
            pd.io.sql.to_sql(df.T, code+table2dic.get(l1[0]['text']), con=engine, index=False, if_exists='replace')
        return
    if len(l2) == 1 and len(tables) == 1:
        df = pd.DataFrame(table[1:], columns=table[0])
        import random
        if table2dic.get(l1[0]['text']):
            pd.io.sql.to_sql(df.T,code+table2dic.get(l1[0]['text']), con=engine, index=False, if_exists='replace')
        COUNT += 1
        return

    if len(l2) == 1 and len(tables) == 2:
        if len(table[0]) == len(tables[0][0]):
            table += tables[0]
        l3, tables = get_title_location(i + 2, pdf)
        logic(code,l3, table, tables, l1)

def get_stock_code(name):
    import re
    t  = re.search('\d{6}',name)
    if t:
        return t.group()
    else:
        return '000000'


# filename = "./data/600066宇通客车2017年年度报告.PDF"
filename = "./data/600232金鹰股份2017年年度报告.PDF"
with pdfplumber.open(filename) as pdf:
    code = get_stock_code(filename)
    pdf_nums = len(pdf.pages)
    # while(COUNT<=6):
    if pdf_nums>100:
        for i in range(20,pdf_nums-3):
            l1 ,tables= get_title_location(i,pdf)
            # l2 = get_title_location(i+1,pdf)
            if len(l1)==1:
                if  len(tables)==1:
                    table = tables[0]
                    dihui(code,l1,table,pdf)
                elif len(tables)==2:
                    table = tables[1]
                    dihui(code,l1,table,pdf)
                    pass
# print("time is {}".format(time.time()-start))
# print(TIME)

def extract_main():
    args = sys.argv
    length = len(args)
    if length<2:
        return
    text = sys.argv[-1]
    # filename = "./data/600232金鹰股份2017年年度报告.PDF"
    if isinstance(text,list):
        for filename in text:
            with pdfplumber.open(filename) as pdf:
                code = get_stock_code(filename)
                pdf_nums = len(pdf.pages)
                # while(COUNT<=6):
                if pdf_nums > 100:
                    for i in range(20, pdf_nums - 3):
                        l1, tables = get_title_location(i, pdf)
                        # l2 = get_title_location(i+1,pdf)
                        if len(l1) == 1:
                            if len(tables) == 1:
                                table = tables[0]
                                dihui(code, l1, table, pdf)
                            elif len(tables) == 2:
                                table = tables[1]
                                dihui(code, l1, table, pdf)
                                pass
'''
1、提取所有表格，根据， 表格字段合并
2、根据表名提取合并，表格，难点，表名获取
'''