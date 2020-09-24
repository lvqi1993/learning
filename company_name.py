import sys
import jieba
import jieba.posseg

def add_org(filename):
    with open(filename,'r',encoding='utf8') as f:
        lines = f.readlines()
        for row in lines:
            row =row.strip().split(",")
            if len(row)==2:
                jieba.add_word(row[0],tag=row[1])
                jieba.suggest_freq(row[0])

def get_company(text):
    l1,l2 = [],[]
    res = []
    add_org("D:/sent2sql/company.txt")
    words = jieba.posseg.cut(text)
    for word in words:
        l1.append(word.word)
        l2.append(word.flag)
    res =[l1[i] for i in range(len(l2)) if 'org'==l2[i]]
    if len(res)<1:
        return None
    else:
        return res

def main():
    args = sys.argv
    length = len(args)
    if length<2:
        return
    text = sys.argv[-1]
    company = get_company(text)
    print(company)

main()