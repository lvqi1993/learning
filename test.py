def process_ntime_ncmp_order(sql,index,name,table):
    ASC = ['最高', "靠前", '最好', '最多', '大于', '超过', '前',"低于"]
    DESC = ['最低', '靠后', '最差', '最少', '少于', '差']
    sql = "select DISTINCT SUBSTRING(t1.ts_code, 1, 6) as company_symbol ,t1.name as companyName,t2.reportdate,t2.{0} AS companyValue from companylist t1 "
    sql = sql.format(name)
    flag = 1
    if flag:
        for i in ASC:
            if i in index:
                # sql = sql + " WHERE SUBSTRING(t2.ts_code, 1, 6)=t1.company_symbol ORDER BY t1.{0} DESC".format(name)
                sql1 = "select DISTINCT company_symbol,{0} ,reportdate  from {1} order by {2} DESC limit 200"
                sql1 = sql1.format(name, table, name)
                sql = sql + " , ({0}) t2 where  t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6) ORDER BY {1} DESC ".format(
                    sql1, name)
                sql = sql + " limit 201"
                print(index[0] + "&" + sql)
                flag = 0
                break
    if flag:
        for i in DESC:
            if i in index:
                sql1 = "select DISTINCT company_symbol,{0} ,reportdate  from {1} order by {2} ASC limit 200"
                sql1 = sql1.format(name, table, name)
                sql = sql + " , ({0}) t2 where  t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6) ORDER BY {1} ASC ".format(
                    sql1, name)
                sql = sql + " limit 202"
                flag = 0
                break
    if flag != 0:
        sql = sql.format(name,table)
        sql1 = "select DISTINCT company_symbol,{0} ,reportdate  from {1}   order by {2} DESC limit 200"
        sql1 = sql1.format(name, table, name)
        sql = sql + " , ({0}) t2 where  t2.company_symbol = SUBSTRING(t1.ts_code, 1, 6) ORDER BY {1}  DESC limit 203 ".format(sql1, name)
        print(index[0] + "&" + sql)
    return
