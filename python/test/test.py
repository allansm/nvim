import dependency

from fileHandle import *
from argsHandle import *

from time import time

ext = getArgs(["--ext"]).ext

if(ext == "" or ext == None):
    exit()

'''
start = time()

for f in files:
    if("." in f):
        if(f.split(".")[-1] == ext):
            print(f)
            if((time()-start) > 30):
                exit()
'''
def fun(f,ext,start):
    if("." in f):
        if(f.split(".")[-1] == ext):
            print(f)
            t = (time()-start)
            #print(t)
            if(t > 10):
                exit()

start = time()

lamb = lambda a,b=ext,c=start : fun(a,b,c)

getAllFiles(".",lamb)
