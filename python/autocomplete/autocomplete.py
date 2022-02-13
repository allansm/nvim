from time import time
from common import *

def getArgs():
    import argparse
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--ext",required=False,dest="ext")
    parser.add_argument("--noexit",action="store_true",desst="noexit")
    
    return parser.parse_args()

try:    
    def fun(f,ext,start,noexit=None):
        if("." in f):
            if(f.split(".")[-1] == ext):
                print(f)
                t = (time()-start)
                
                if(t > 10):
                    if(noexit == None or noexit == False):
                        exit()    
    args = getArgs()

    ext = args.ext
    noexit = args.noexit

    if(ext == "" or ext == None):
        exit()
 
    start = time()

    lamb = lambda a,b=ext,c=start,d=noexit : fun(a,b,c,d)

    getAllFilesPath(".",lamb)
except:
    dummy=""
