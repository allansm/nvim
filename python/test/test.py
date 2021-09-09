import dependency

from fileHandle import *
from argsHandle import *

ext = getArgs(["ext"]).ext

files = getAllFilesIgnoring(".",".git")

for f in files:
    if("." in f):
        if(f.split(".")[-1] == ext):
            print(f)
