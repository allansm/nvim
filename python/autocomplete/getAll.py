from common import *
from time import time

def getArgs():
    import argparse
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--noexit",action="store_true",dest="noexit")
    
    return parser.parse_args()

try:
    def fun(f,start,noexit=None):
        if(not ".git" in f and not ".exe" in f):
            print(f)
            t = (time()-start)
            
            if(t > 10):
                if(noexit == None or noexit == False):
                    exit()

    noexit = getArgs().noexit

    start = time()

    lamb = lambda a,b=start,c=noexit : fun(a,b)

    getAllFilesPath(".",lamb)
except:
    dummy=""
