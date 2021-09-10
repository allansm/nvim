try:
    import dependency

    from fileHandle import *
    from argsHandle import *

    from time import time
    
    def fun(f,ext,start,noexit=None):
        if("." in f):
            if(f.split(".")[-1] == ext):
                print(f)
                t = (time()-start)
                
                if(t > 10):
                    if(noexit == None or noexit == False):
                        exit()

    args = getArgs(["--ext","?noexit"])
    
    ext = args.ext
    noexit = args.noexit

    if(ext == "" or ext == None):
        exit()
 
    start = time()

    lamb = lambda a,b=ext,c=start,d=noexit : fun(a,b,c,d)

    getAllFilesPath(".",lamb)
except:
    dummy=""
