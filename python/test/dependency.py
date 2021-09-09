def include(path):
    import sys
    import os
    from os.path import dirname,realpath
    from glob import glob
    
    tmp = os.getcwd()
    os.chdir(dirname(realpath(__file__)))

    anyFile = glob(path+"/*")[0]
    path = dirname(realpath(anyFile))

    sys.path.append(path)

    os.chdir(tmp)

def relative(path):
    import sys
    import os
    from os.path import dirname,realpath
    from glob import glob 

    tmp = dirname(realpath(__file__))
    curr = os.getcwd()
    
    os.chdir(tmp)
    
    rp = realpath(path)
    
    os.chdir(curr)
    
    return rp

def readFile(fname):
    f = open(fname,"r")
    return f.read()

config = relative("../../.config")

pythonlib = readFile(config).split("\n")[0];

include(pythonlib)
