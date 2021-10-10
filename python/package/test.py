import dependency

from fileHandle import *
from argsHandle import *

ext = getArgs(["ext"]).ext
ext = ext.replace(".","")

lines = getLines(selfLocation(__file__)+"/"+ext+".config")

res = ""
flag = False

for line in lines:
    if(not flag):
        flag = True
    else:
        res+=",,"
    res+=line

print(res)
