#!/usr/bin/env python
#===============================================================================
# script calculate N50 value for assembly
#===============================================================================

import os
import sys 

contigsMultifasta = sys.argv[1]

contigsLength = []
sum = 0
from Bio import SeqIO
for seq_record in SeqIO.parse(open(contigsMultifasta), "fasta"):
    sum += len(seq_record.seq)
    contigsLength.append(len(seq_record.seq))

teoN50 = sum / 2.0     
contigsLength.sort()   
contigsLength.reverse()    
    
#checking N50
testSum = 0
N50 = 0
for con in contigsLength:
    testSum += con
    if teoN50 < testSum:
        N50 = con
        break
   
print str(N50) 
