# -*- coding: utf-8 -*-
"""
Created on Tue Dec  4 15:59:37 2018

@author: Arno
"""


#import tushare as ts
import datetime
import time  
from Roles import *
import jieba 
# jieba.set_dictionary("./dict.txt")
# jieba.initialize()
import jieba.posseg
#jieba.posseg.set_idf_path("./idf.txt")
import re
#import jieba.posseg 
#df = ts.get_sina_dd('002714', date='2018-12-04')
#print(df)


DAY = 1
MONTH = 2
YEAR = 3
NOW_YEAR = 4
NOW_MONTH = 5

#获取当前的时间（年月日）
def get_now_year():
    return int(datetime.datetime.now().strftime('%Y'))

def get_now_month():
    return int(datetime.datetime.now().strftime('%m'))

def get_now_day():
    return int(datetime.datetime.now().strftime('%d'))

def get_now_week():
    week = datetime.datetime.now().strftime('%A')
    w = weekDict[week]
    return w

def get_now_time():
    nowYear = get_now_year()
    nowDay = get_now_day()
    nowMonth = get_now_month()
    return nowYear,nowMonth,nowDay
##     

#判断是否是闰年
def is_leap_year(thisyear):
    if thisyear % 400 == 0 or thisyear % 4 ==0 and thisyear % 100 != 0:
        return True
    else:
        return False
 
#是否在绝对规则中
def if_in_absolute_roles(strs):
    role = ABSOLUTE_ROLES
    
    for key in role.keys():
        if key.find(strs) != -1:
            return True
    return False
  
    
def get_relative_time(roles):
    idx   = roles[0]
    tType = roles[1]
    nowYear,nowMonth,nowDay = get_now_time()
    year  = nowYear
    month = nowMonth
    day   = nowDay
    if tType == YEAR:
        year = nowYear + idx
        month = 12
        day = 31
    if tType == MONTH:
        month = nowMonth + idx
        if month > 12:
            month = month - 12
            year += 1
        if month < 1:
            month = month + 12
            year -= 1
    if tType == DAY:
        day = nowDay + idx
        if is_leap_year(year):
            MD = monthDaysLeap
        else:
            MD = monthDays
        if day > MD[nowMonth]:
            day = day - MD[nowMonth]
            month += 1
            if month > 12:
                month = month - 12
                year += 1
        if day < 0:
            month -= 1
            if month < 1:
                month = month + 12
                year -= 1
            day = day + MD[month]
            
    return year,month,day
    
#获取相对规则的年月日    
def get_year_month_day(t1, t2 ,tType, msg, msgTime):

    nowYear,nowMonth,nowDay = get_now_time()
    year1 = nowYear
    year2 = nowYear
    month1 = nowMonth
    month2 = nowMonth
    day1 = nowDay
    day2 = nowDay
    
    if t1 <= t2:
        start = t1
        end = t2
    else:
        start = t2
        end = t1
      
    if tType == YEAR:
        year1 = nowYear + int(start)
        year2 = nowYear + int(end - 1)

        day1 = 1
        day2 = 31
        month1 = 1
        month2 = 12    
        
    if tType == MONTH:
        month1 = nowMonth + int(start)
        month2 = nowMonth + int(end - 1)
        day1 = 1
        m = month1
        if m > 12:
            m = m - 12
        if is_leap_year(year2):
            day2 = monthDaysLeap[m]
        else:
            day2 = monthDays[m]
    if tType == DAY:
        day1 = nowDay + int(start)
        day2 = nowDay + int(end - 1)        
        
    if tType == NOW_YEAR:
        year1 = nowYear + int(start)
        year2 = nowYear
        
    if tType == NOW_MONTH:
        month1 = nowMonth + int(start)
        month2 = nowMonth
        
    if tType == QUARTER:
        quarterNow = int((int(month1) - 1)/3) + 1
        quarter1 = quarterNow + int(start)
        quarter2 = quarterNow + int(end - 1)
        if quarter1 <= 0:
            quarter1 = quarter1 + 4
            year1 = year1 - 1
        if quarter1 > 4:
            quarter1 = quarter1 - 4
            year1 = year1 + 1
        if quarter2 <= 0:
            quarter2 = quarter2 + 4
            year2 = year2 - 1
        if quarter2 > 4:
            quarter2 = quarter2 - 4
            year2 = year1 + 1
        month1 = (quarter1 - 1)*3 + 1
        month2 = quarter2*3
        day1 = 1
        if is_leap_year(year2):
            day2 = monthDaysLeap[month2]
        else:
            day2 = monthDays[month2]
                
    if month1 > 12:
        month1 = month1 - 12
        year1 += 1
        
        
    if is_leap_year(year1):
        MD = monthDaysLeap
    else:
        MD = monthDays
        
    if day1 > MD[month1]:
        day1 = day1 - MD[month1]
        month1 += 1
    if day1 < 0:
        if month1-1 <= 0:
            month1 = 12
            year1 -= 1
            day1 = day1 + MD[12]
        else:
            day1 = day1 + MD[month1 - 1]
            month1  -= 1
    
        
    if month1 > 12:
        month1 = month1 - 12
        year1 += 1
        
        
    if month2 > 12:
        month2 = month2 - 12
        year2 += 1
        
    
    if is_leap_year(year1):
        MD = monthDaysLeap
    else:
        MD = monthDays
        
    if day2 > MD[month2]:
        day2 = day2 - MD[month2]
        month2 += 1
    if day2 < 0:
        if month2-1 <= 0:
            month2 = 12
            year2 -= 1
            day2 = day2 + MD[12]
        else:
            day2 = day2 + MD[month2 - 1]
            month2  -= 1    
    
        
    if month2 > 12:
        month2 = month2 - 12
        year2 += 1
        
    #print("1",year1, month1, day1, year2, month2, day2,msgTime)
    
    
    ###再判断到昨天到现在这种 
    role = MONTH_YEAR_ROLE
    
    keyMax = 0
    value = []
    for key in role.keys():
        if msg.find(key) != -1 and msgTime.find(key) == -1:
            if len(key) > keyMax:
                value = (role.get(key))
                keyMax = len(key)
        if len(value) != 0:
            year2,month2,day2 = get_relative_time(value)
            
     
    role2 = ABSOLUTE_ROLES
    value = []
    for key in role2.keys():
        if msgTime.find(key) != -1:
            value = (role2.get(key))
            break
    if len(value) > 0:
        if value[2] == YEAR:
            year1 = value[0]
            year2 = value[1]
        if value[2] == MONTH:
            month1 = value[0]
            month2 = value[1]
            day1 = 1
            if is_leap_year(year1):
                MD = monthDaysLeap
            else:
                MD = monthDays
            day2 = MD[month2]
        if value[2] == DAY:
            day1 = value[0]
            day2 = value[1]
    return year1, month1, day1, year2, month2, day2
 

 


#中文转阿拉伯数字
def cn_to_number(time):
    res = ''
    for item in time:
        if item in UTIL_CN_NUM.keys():
            res = res + str(UTIL_CN_NUM[item])
    return res


# 对提取出的拼接日期串进行进一步的处理，进行有效性判断
def check_time_valid(word):
    #print('check:',word)
    m = re.match("\d+$", word)
    if m:
        if len(word) <= 6:
            return None
    word1 = re.sub('[号|日]\d+$', '日', word)
    #print('word1:',word1)
    if word1 != word:
        return check_time_valid(word1)
    else:
        return word1
    
###判断是否含有数字及是否在RELATIVE_ROLES
def check_contain_digit(check_str):
    if (is_relative_roles(check_str)):
        return True

    if (is_include_time(check_str)):
        check_str = str(cn_to_number(check_str))
        for ch in check_str:
            if ch.isdigit():
                return True
    return False



#基于正则和绝对规则的年月日
def time_extract(text):
    time_res = []
    
	#print(text)
    word = ''
    for k, v in jieba.posseg.cut(text):
        if word != '':
            if v in ['m', 't'] or if_in_absolute_roles(k):
                word = word + k
            else:
                time_res.append(word)
                word = ''
        elif v in ['m', 't']:  # m:数字 t:时间
            word = k
    #print('word:',word)
    if word != '':
        time_res.append(word)
    #print('time_res:',time_res)
    # filter() 函数用于过滤序列，过滤掉不符合条件的元素，返回由符合条件元素组成的新列表

    result = list(filter(lambda x: x is not None, [check_time_valid(w) for w in time_res]))
    resultLast = []
    #print("r1",result)
    for i in range(len(result)):
        if (check_contain_digit(result[i])):
            resultLast.append(result[i])
    #print("r2",resultLast)
    return resultLast


#判断是否为年月日
def is_year_month_day(msg):
    #print(msg)
    ymt = msg.split('.')
    if (len(ymt) == 3):
        try:
            if (int(ymt[1]) >= 1 and int(ymt[1]) <= 12 and int(ymt[2]) >=1 and int(ymt[2]) <= 31):
                return True,'.'
            else:
                return False,'.'
        except:
            return False
    ymt = msg.split('-')
    if (len(ymt) == 3):
        try:
            if (int(ymt[1]) >= 1 and int(ymt[1]) <= 12 and int(ymt[2]) >=1 and int(ymt[2]) <= 31):
                return True,'-'
            else:
                return False,'-'
        except:
            return False,'-'   
        
        
    return False,'.'
        
   
##判断是否属于表RELATIVE_ROLES
def is_relative_roles(strs):
    role = RELATIVE_ROLES 
    for key in role.keys():
        if key.find(strs) != -1:
            return True
    return False
 
def is_include_time(strs):
    if strs.find('年') != -1 or strs.find('月') != -1 or strs.find('日') != -1 or strs.find('.') != -1:
        return True
    return False
    


#基于正则和绝对规则的年月日
def get_text_date(text):
    #print(text)
    extractResult = time_extract(text)
    #print(extractResult)
    if (len(extractResult) == 1):
        msg = extractResult[0]
        m = re.match(
            r"([0-9零一二两三四五六七八九十]+年)?([0-9一二两三四五六七八九十]+月)?([0-9一二两三四五六七八九十]+[号日])?([上中下午晚早]+)?([0-9零一二两三四五六七八九十百]+[点:\.时])?([0-9零一二三四五六七八九十百]+分?)?([0-9零一二三四五六七八九十百]+秒)?",
                 msg)
        year = m.group(1)
        month = m.group(2)
        day = m.group(3)
  
        falg,s = is_year_month_day(msg)
        if (falg):
            ymt = msg.split(s)
            year = ymt[0]
            month = ymt[1]
            day = ymt[2]

        if year == None and month == None and day == None:
            return None,None,None,None,None,None
        

        if year != None:
            year = cn_to_number(year)
        if month != None:
            month = cn_to_number(month)
        if day != None:
            day = cn_to_number(day)
        
        year1 = year2 = year
        month1 = month2 = month
        day1 = day2 = day
        
        
        role = ABSOLUTE_ROLES
        
        value = []
        for key in role.keys():
            if text.find(key) != -1:
                value = (role.get(key))
                break
        if len(value) > 0:
            if value[2] == YEAR:
                if year1 == None:
                    year1 = value[0]
                if year2 == None:
                    year2 = value[1]
            if value[2] == MONTH:
                if month1 == None:
                    month1 = value[0]
                if month2 == None:
                    month2 = value[1]
            if value[2] == DAY:
                if day1 == None:
                    day1 = value[0]
                if day2 == None:
                    day2 = value[1]  
                
        return year1,month1, day1,year2,month2, day2
    elif(len(extractResult) == 2):
        year = []
        month = []
        day = []
        for i in range(2):
            msg = extractResult[i]
            #print(msg)
            m = re.match(
            r"([0-9零一二两三四五六七八九十]+年)?([0-9一二两三四五六七八九十]+月)?([0-9一二两三四五六七八九十]+[号日])?([上中下午晚早]+)?([0-9零一二两三四五六七八九十百]+[点:\.时])?([0-9零一二三四五六七八九十百]+分?)?([0-9零一二三四五六七八九十百]+秒)?",
                 msg)
            year.append(m.group(1))
            month.append(m.group(2))
            day.append(m.group(3))
            
            falg,s = is_year_month_day(msg)
            if (falg):
                ymt = msg.split(s)
                year[i] = ymt[0]
                month[i] = ymt[1]
                day[i] = ymt[2]

            
        #print(year, month,day)   
        if year[0] == None and year[1] == None:
            return None,None,None,None,None,None
        
        if year[0] != None:
            year[0] = cn_to_number(year[0])
        if year[1] != None:
            year[1] = cn_to_number(year[1])
        if month[0] != None:
            month[0] = cn_to_number(month[0])
        if month[1] != None:
            month[1] = cn_to_number(month[1])
        if day[0] != None:
            day[0] = cn_to_number(day[0])
        if day[1] != None:
            day[1] = cn_to_number(day[1])

            
        year1 = year[0]
        year2 = year[1]
        month1 = month[0]
        month2 = month[1]
        day1 = day[0]
        day2 = day[1]
        
        
        
        '''
        if (year1 == None and month1 == None and day1 == None and
            is_relative_roles(extractResult[0])):
            t = get_time(extractResult[0],extractResult[0])
            m = t.split('-')
            year1 = m[0]
            month1 = m[1]
            day1 = m[2]
        if (year2 == None and month2 == None and day2 == None and 
            is_relative_roles(extractResult[1])):
            t = get_time(extractResult[1],extractResult[1])
            m = t.split('-')
            year2 = m[4]
            month2 = m[5]
            day2 = m[6]
        '''
        
        
        
        #print('1',year1,month1, day1,year2,month2, day2)
####先判断前几个月这种     
        role = ABSOLUTE_ROLES
        value = []
        for key in role.keys():
            if extractResult[0].find(key) != -1:
                #print(extractResult)
                value = (role.get(key))
                #           
                #print(key)
                break
        if len(value) > 0:
            if value[2] == YEAR:
                if year1 == None:
                    year1 = value[0]
                if year2 == None:
                    year2 = value[1]
            if value[2] == MONTH:
                if month1 == None:
                    month1 = value[0]
                if month2 == None:
                    month2 = value[1]
            if value[2] == DAY:
                if day1 == None:
                    day1 = value[0]
                if day2 == None:
                    day2 = value[1]  
        #print( year, month, day)
###再判断到昨天到现在这种      
        role = MONTH_YEAR_ROLE
    
        keyMax = 0
        value = []
        idx = 0
        flag = 2
        for key in role.keys():
            if text.find(key) != -1:
                idx = text.find(key)
                #print(key)
                if len(key) > keyMax:
                    value = (role.get(key))
                    keyMax = len(key)
                    if extractResult[0].find(key) != -1:
                        flag = 1                   
                    
        if len(value) != 0:
            if flag == 1:
                year1,month1,day1 = get_relative_time(value)
                if value[1] == MONTH:
                    day1 = 1
                if value[1] == YEAR:
                    month1 = 1
                    day1 = 1
 
                textLast = text[idx:]
                for key in ABSOLUTE_ROLES.keys():
                    if textLast.find(key) != -1 and extractResult[0].find("年") != -1:
                        if (is_leap_year(year1)):
                            MD = monthDaysLeap
                        else:
                            MD = monthDays
                            month1 = ABSOLUTE_ROLES.get(key)[1]
                            day1 = MD[month1]
            else:
                year2,month2,day2 = get_relative_time(value)
                if value[1] == MONTH:
                    if (is_leap_year(year2)):
                        MD = monthDaysLeap
                    else:
                        MD = monthDays
                    day2 = MD[month2]
                if value[1] == YEAR:
                    month2 = 12
                    day2 = 31
                textLast = text[idx:]
                for key in ABSOLUTE_ROLES.keys():
                    if textLast.find(key) != -1:
                        if (is_leap_year(year2)):
                            MD = monthDaysLeap
                        else:
                            MD = monthDays
                            month2 = ABSOLUTE_ROLES.get(key)[1]
                            day2 = MD[month2]
          
        #print('3',year1,month1, day1,year2,month2, day2)
        return year1,month1, day1,year2,month2, day2
    else:
        return None,None,None,None,None,None

 
    
def put_zero(year,month,day):
     m = month
     d = day
     if len(str(month)) == 1:
         m = '0' + str(month)
     if len(str(day)) == 1:
         d = '0' + str(day)
         
     return str(year),str(m),str(d)
         
    
#相对规则入口
def get_time(strTime,strings):
    value = []
    k = ''
    role = RELATIVE_ROLES
    
    keyMax = 0
    for key in role.keys():
        if strTime.find(key) != -1:
            if len(key) > keyMax:
                value = (role.get(key))
                k = key
                keyMax = len(key)

    if len(value) == 0:
        return '-1'
        
    #result = []
    #for i in value:
    year1, month1, day1, year2, month2, day2 = get_year_month_day(value[0], value[1], value[2], strings, strTime)
    if int(year1) > int(year2):
        tmp = year1
        year1 = year2
        year2 = tmp
    if int(year1) == int(year2) and  int(month1) > int(month2):
        tmp = month1
        month1 = month2
        month2 = tmp
    if int(year1) == int(year2) and  int(month1) == int(month2) and int(day1) > int(day2):
        tmp = day1
        day1 = day2
        day2 = tmp
    
    year1,month1,day1 = put_zero(year1,month1,day1)
    year2,month2,day2 = put_zero(year2,month2,day2)
    
    
    time1 = str(year1) + '-'+ str(month1) + '-' + str(day1)
    time2 = str(year2) + '-'+ str(month2) + '-' + str(day2)
    time = time1 + "--" + time2
    #result.append(time)
         
        
    return time 

#正则及绝对规则入口
def get_date(strings):
    year1,month1, day1, year2,month2, day2 = get_text_date(strings)

    if year1 == None and month1 == None and day1 == None:
            return '-1'
     
   

    if day1 == None and month1 == None:
        day1 = '1'
    if day2 == None and month2 == None:
        day2 = '31'
    if day1 == None and month1 != None:
        day1 = '1'
    if day2 == None and month2 != None:
        if is_leap_year(get_now_year()):
            MD = monthDaysLeap
        else:
            MD = monthDays
        if int(month2) <= 12 and int(month2) > 0:
            day2 = MD[int(month2)]
        else:
            day2 = '31'
    if month1 == None and year1 ==  None:
        month1 = str(get_now_month())
        month2 = str(get_now_month())
    if month1 == None and year1 != None:
        month1 = '1'
        month2 = '12'
        
    if year1 == None:
        year1 = str(get_now_year())
    if year2 == None:
        year2 = str(get_now_year()) 
        
    if int(year1) < 100 or int(year2) < 100:
        return '-1'

    year1,month1,day1 = put_zero(year1,month1,day1)
    year2,month2,day2 = put_zero(year2,month2,day2)
    
    time1 = str(year1) + '-'+ str(month1) + '-' + str(day1)
    time2 = str(year2) + '-'+ str(month2) + '-' + str(day2)
    time = time1 + "--" + time2

    return time
    

def get_date2(msg):

    role1 = RELATIVE_ROLES
    role2 = ABSOLUTE_ROLES
    
    TimeMsg  = []
    TimeMsgidx  = []
    abbr = ''
    flag = 0
    '''
    for key1 in role1.keys():
        if msg.find(key1) != -1:
                print(key1)
                for key2 in role2.keys():
                    if msg.find(key2) != -1:
                        TimeMsg.append(key1 + key2)
                        msg = msg.replace(key1,'')
                        msg = msg.replace(key2,'')
                        flag = 1
                        break
                if flag == 0:
                    abbr = key1
                    TimeMsg.append(key1)
                flag = 0
                    
    
    for key in role2.keys():
        if msg.find(key) != -1:
            if abbr != '':
                TimeMsg.append(abbr+key)
            else:
                TimeMsg.append('今年'+key)
    '''
    for key in role1.keys():
        if msg.find(key) != -1:
                TimeMsgidx.append(msg.find(key))
                TimeMsg.append(key)
                
    if (len(TimeMsg) == 2):
        if TimeMsgidx[0] > TimeMsgidx[1]:
            tmp = TimeMsgidx[0] 
            TimeMsgidx[0] = TimeMsgidx[1]
            TimeMsgidx[1] = tmp
            
            tmp = TimeMsg[0] 
            TimeMsg[0] = TimeMsg[1]
            TimeMsg[1] = tmp
            
            for key in role2.keys():
                if msg.find(key) != -1:
                    idx = msg.find(key)
                    idxmax = -1
                    for i in range(len(TimeMsgidx)):
                        if idx > TimeMsgidx[i]:
                            idxmax = i
                            if idxmax >= 0:
                                TimeMsg[idxmax] = TimeMsg[idxmax] + key
            
    if (len(TimeMsg) == 1):
        abbr = TimeMsg[0]
        i = 0
        for key in role2.keys():
            if msg.find(key) != -1:
                idx = msg.find(key)
                if idx >= TimeMsgidx[0] and i== 0:
                    TimeMsg[i] = TimeMsg[i] + key
                    i += 1
                else:
                    TimeMsg.append(abbr+key)
        
        
    if (len(TimeMsg) == 0):
        abbr = '今年'
        i = 0
        for key in role2.keys():
            if msg.find(key) != -1:
                TimeMsg.append(abbr+key)
                                        
    #print(TimeMsg)
    
##去重
    if(len(TimeMsg) ==  2):
        if len(TimeMsg[0]) > len(TimeMsg[1]):
            if TimeMsg[0].find(TimeMsg[1]) != -1:
                TimeMsg.remove(TimeMsg[1])
        else:
            if TimeMsg[1].find(TimeMsg[0]) != -1:
                TimeMsg.remove(TimeMsg[0])


    # print(TimeMsg)
    if (len(TimeMsg) ==  1):
        time = get_time(TimeMsg[0],msg)
        return time
    elif(len(TimeMsg) ==  2):
        time1 = get_time(TimeMsg[0],msg)
        time2 = get_time(TimeMsg[1],msg)
        time = time1.split("--")[0] + '--' +  time2.split("--")[1]
        return time
    else:
        return '-1'
        
   

def put_year_for_data(str1):
    pattern = re.compile(r'\d+')
 
    str2 = str1
    res = re.findall(pattern, str1)
    for i in res:
        if int(i) >= 1970 and int(i) <= 2020:
            idx = str1.find(str(i)) + len((str(i)))
            if(str1[idx]) != '年':
                str_list=list(str1)
                str_list.insert(idx,'年')
                str2="".join(str_list)

    return str2
          

#主函数  
def main(msg):
    msg = msg.replace(' ','')
    msg = put_year_for_data(msg)
    time = '-1'
    time = get_date(msg)
    
    if time == '-1':
        #print("come to road 2")
        time = get_date2(msg)
        
    return time
        
'''
for i in range(100):
    msg = input("请输入语句：")
    rseult = main(msg)
    print(rseult)
    if msg == "over":
        break
input("请按回车结束")
'''


#################################################################################
TEST_MODEL = 1


def test1(text):
    # text = "上个季度大盘表现？ "
    result = main(text)
    # print (result)

# test1(text=None)

def test2():
    f =  open("./test/test.txt", 'rb')
    result = []
    for line in f:
        msg = line.decode('utf8')
        time = main(msg)
        if time == '-1':
            time = '-1' + '                    '
        result.append( str(time) + "  " + msg)
    f.close()
    
    #print(result)
    r = open("./test/result.txt", 'w', encoding='utf-8')
    for line in result:
        print(line)
        r.writelines(line)
    r.close()


def get_all_time(text):
    return main(text)


# if TEST_MODEL == 1:
#     text = "上个季度大盘表现？ "
#     test1(text)
# else:
#     test2()
#####################################################################################    


#
# t = get_time("信雅达净利润")
# print(t,type(t))

    
    



