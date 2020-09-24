# -*- coding: utf-8 -*-
"""
Created on Sun Dec 16 18:10:20 2018

@author: Weiqiang Jia
"""
#******************************************************************************************************************************
import xlrd
import jieba
import jieba.analyse
import jieba.posseg
# jieba.load_userdict("D:\Work\Sunyard\Knowledge_Search\dict.txt")
#******************************************************************************************************************************
indexDictExcelFile = r'./index.xlsx'
measurementDictExcelFile = r'./measurement.xlsx'
unitDictExcelFile = r'./unit.xlsx'
#chineseNumDictExcelFile = r'D:\Work\Sunyard\Knowledge_Search\ChineseNum.xlsx'
#******************************************************************************************************************************
def getIndexDictInfo(indexDictExcelFile):
    workBook=xlrd.open_workbook(indexDictExcelFile)
    sheet0 = workBook.sheet_by_index(0)
    indexNumber=sheet0.nrows
    indeces=sheet0.col_values(0)
    return (indexNumber,indeces)
#******************************************************************************************************************************
def getMeasurementDictInfo(measurementDictExcelFile):
    workBook=xlrd.open_workbook(measurementDictExcelFile)
    sheet0 = workBook.sheet_by_index(0)
    measurementNumber=sheet0.nrows
    measurements=sheet0.col_values(0)
    return (measurementNumber,measurements)
#******************************************************************************************************************************
def getUnitDictInfo(unitDictExcelFile):
    workBook=xlrd.open_workbook(unitDictExcelFile)
    sheet0 = workBook.sheet_by_index(0)
    unitNumber=sheet0.nrows
    units=sheet0.col_values(0)
    unitsToValues=sheet0.col_values(1)
    return (unitNumber,units,unitsToValues)
#******************************************************************************************************************************
def getChineseNumDictInfo(chineseNumDictExcelFile):
    workBook=xlrd.open_workbook(chineseNumDictExcelFile)
    sheet0 = workBook.sheet_by_index(0)
    chineseNumCount=sheet0.nrows
    chineseNums=sheet0.col_values(0)
    chineseNumsToValues=sheet0.col_values(1)
    return (chineseNumCount,chineseNums,chineseNumsToValues)
#******************************************************************************************************************************
def judgeStringContains(fatherString, childString):
    judgeResult = childString in fatherString
    return judgeResult
#******************************************************************************************************************************
def printResult(returnIndex, returnMeasurement, returnValue, returnUnitValue):
    if returnIndex != '':
        print("=>指标命中!",returnIndex)
    else:
        print("=>指标未命中!")
    if returnMeasurement != '':
        print("=>度量命中!",returnMeasurement)
    else:
        print("=>度量未命中!")
    if returnValue != '':
        print("=>数值命中!",returnValue)
    else:
        print("=>数值未命中!")
    if returnUnitValue != '':
        print("=>单位命中!",returnUnitValue)  
    else:
        print("=>单位未命中!")
#******************************************************************************************************************************
def extractElements(segList, indeces, measurements, units, unitsToValues, segListLen):
    #----------------------------------------------
    valueFlag = 0
    unitFlag = 0
    unitHitFlag = 0
    returnIndex = ''
    returnMeasurement = ''
    returnValue = ''
    returnUnitValue = ''
    #---------------------指标----------------------    
    for word in segList:
        #print(type(eval(word)))
        for wordIndexDict in indeces:
            if word == wordIndexDict:
                returnIndex = word
                #print("=>指标命中!",word)
                continue
    #---------------------------------------------
        for wordInMeasurementDict in measurements:
            if word == wordInMeasurementDict:
                valueFlag = 1
                returnMeasurement = word
                #print("=>度量命中!",word)
                continue
    #---------------------------------------------
        if word.isdigit() and valueFlag == 1:
            returnValue = word
            #print("=>整数数值命中!",word)
            unitFlag = 1
            continue
        if judgeStringContains(word, '%') == True and valueFlag == 1:
            returnValue = word
            #print("=>百分数数值命中!",word)
            continue
        if judgeStringContains(word, '.') == True and valueFlag == 1:
            returnValue = word
            #print("=>小数数值命中!",word)
            unitFlag = 1
            continue
        if unitFlag == 1 and valueFlag == 1:
            firstOneChar = word[:1]
            #print(firstOneChar)
            firstTwoChar = word[:2]
            #print(firstTwoChar)
            unit_i = 0
            for unitWord in units:
                if firstTwoChar == unitWord and len(word)>1 and len(word)<3:
                    unitHitFlag = 1
                    returnUnitValue = unitsToValues[unit_i]
                    #print("=>两级单位命中!",firstTwoChar,unitsToValues[unit_i])
                    break
                if unit_i<segListLen:
                    unit_i+=1

            if unitHitFlag == 0:
                unit_i = 0
                for unitWord in units:
                    if firstOneChar == unitWord and len(word)<3:                        
                        returnUnitValue = unitsToValues[unit_i]
                        #print("=>一级单位命中!",firstOneChar,unitsToValues[unit_i])
                        break
                    if unit_i<segListLen:
                        unit_i+=1
    #---------------------------------------------           
    return [returnIndex, returnMeasurement, returnValue, returnUnitValue]
#******************************************************************************************************************************
# def extractChineseNums(segList,segListLen,chineseNumCount,chineseNums,chineseNumsToValues,units):
#     ChineseNumsHitFlag = 0
#     similarity = 0
#     for word in segList:
#         wordLen = len(word)
#         if wordLen == 1:
#             for wordChineseNumsDict in chineseNums:
#                 if word[0] == wordIndexDict:
#                     similarity = 2
#                     break
#         else:
#             i = 0
#             for i in range(wordLen):
#                 for wordChineseNumsDict in chineseNums:
#                     if word[i] == wordIndexDict:
#                         similarity+=1
#     if similarity>1:
#         ChineseNumsHitFlag = 1
#     return ChineseNumsHitFlag


def index_main(inputString):
    #print('\n\n')
    #print('==============================Algorithm Starts!===================================')
    # inputString = '2012年应收账款超过5000亿的公司有哪些？'
    # inputString = input("请输入待抽取指标、度量、数值和单位的语句: ")
    #---------------------------------------
    indexDictAddr = indexDictExcelFile
    measurementDictAddr = measurementDictExcelFile
    unitDictAddr = unitDictExcelFile
    # chineseNumDictAddr = chineseNumDictExcelFile
    #---------------------------------------
    (indexNumber,indeces) = getIndexDictInfo(indexDictAddr)
    (measurementNumber,measurements) = getMeasurementDictInfo(measurementDictAddr)
    (unitNumber,units,unitsToValues) = getUnitDictInfo(unitDictAddr)
    # (chineseNumCount,chineseNums,chineseNumsToValues) = getChineseNumDictInfo(chineseNumDictAddr)
    #print(unitsToValues[-1])
    #---------------------------------------
    #segVector = jieba.cut_for_search(inputString)
    #segVector = jieba.posseg.cut(inputString)
    segVector = jieba.cut(inputString)
    segList = list(segVector)
    segListLen = len(segList)
    #print("=>总共分词有",segListLen,"个。分别是：",segList)
    [returnIndex, returnMeasurement, returnValue, returnUnitValue]\
    = extractElements(segList, indeces, measurements, units, unitsToValues,segListLen)
    #printResult(returnIndex, returnMeasurement, returnValue, returnUnitValue)
    if returnValue == '':
        return  [returnIndex, returnMeasurement,""]
        pass
    if returnUnitValue=='':
        return [returnIndex, returnMeasurement, returnValue]
        # print('未抽取到数值！')
    # print(returnIndex,returnMeasurement,returnValue,returnUnitValue)
    # print(type(returnUnitValue),type(returnValue))
    # print(returnValue,returnUnitValue)
    num = eval(str(returnValue))*eval(str(returnUnitValue))

    return [returnIndex, returnMeasurement, str(num)]
    
if __name__ == '__main__':
    [index, measurement, value] = index_main()

        
        
        
        
        
        
        
        