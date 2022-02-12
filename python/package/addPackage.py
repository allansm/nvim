from os.path import dirname,realpath

def getArgs():
    import argparse
    
    parser = argparse.ArgumentParser()
    parser.add_argument("ext")
    parser.add_argument("txt")
    
    return parser.parse_args()

args = getArgs()
ext = args.ext
ext = ext.replace(".","")

config = dirname(realpath(__file__))+"/"+ext+".config"

f = open(config,"a")
f.write(args.txt+"\n")
f.close()
