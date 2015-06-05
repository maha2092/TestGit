A = LOAD '/Users/msudarsanan/Desktop/wc.txt';
B = FOREACH A GENERATE flatten(TOKENIZE((chararray) $0)) as word;
C= GROUP B by word;
D= FOREACH C generate COUNT(B) , group;
