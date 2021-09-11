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

    start = time()

    lamb = lambda a,c=start: fun(a,c)

    getAllFilesPath(".",lamb)
except:
    dummy=""
