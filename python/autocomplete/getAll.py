try:
    import dependency

    from fileHandle import *
    from argsHandle import *

    from time import time
    
    def fun(f,start,noexit=None):
        if(not ".git" in f and not ".exe" in f):
            print(f)
            t = (time()-start)
            
            if(t > 10):
                if(noexit == None or noexit == False):
                    exit()

    noexit = getArgs(["?noexit"]).noexit

    start = time()

    lamb = lambda a,b=start,c=noexit : fun(a,b)

    getAllFilesPath(".",lamb)
except:
    dummy=""
