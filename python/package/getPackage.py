from os.path import dirname,realpath
def getLines(fname):
    f = open(fname,"r")
    tmp = f.read()
    f.close()

    return tmp.split("\n")

def getArgs():
    import argparse
    
    parser = argparse.ArgumentParser()
    parser.add_argument("ext")
    
    return parser.parse_args()

ext = getArgs().ext
ext = ext.replace(".","")

lines = getLines(dirname(realpath(__file__))+"/"+ext+".config")

res = ""
flag = False

for line in lines:
    if(not flag):
        flag = True
    else:
        res+=",,"
    res+=line

print(res)
