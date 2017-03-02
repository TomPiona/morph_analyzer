import sys,re,math,operator,json
import numpy as np
from random import choice

targets=[]
name=""

def main(parseFile, filename):

    # read morphological analyses
    parses={}
    file=open(parseFile)
    for line in file:        
        cols=line.rstrip().split("\t")
        if len(cols) > 1:
            word=cols[0]
            parse=cols[1]

            if re.match("UNKNOWN", parse) == None:
                if word not in parses:
                    parses[word]=[]

                parses[word].append(parse)

    file.close()

    p=re.compile("[\t ]")

    file=open(filename)
    for line in file:        
        line=re.sub("[\*\[\]/]", "", line)
        text=p.split(line.rstrip())
        #print text
      #  print ' '.join(text)
        for word in text:
            lookup=re.sub("[<>]", "", word)
            #print word
            parse=""
            if lookup in parses:
                parse=' '.join(parses[lookup])
                print("%s (%s)" % (word, parse))
            else:
                print("%s" % (word))

    file.close()


# USAGE python parse.py test.txt text.txt
main(sys.argv[0], sys.argv[1])