import os

import sys
sys.path.append("../functions")

from fileHandle import *

from urllib.parse import urlparse

path = input("path:")

def getAllFiles(path):
    fold = os.walk(path)
    ret = []
    for root, dirs, files in fold:
        for name in files:
            ret.append(os.path.join(root, name))

    return ret

def getFileName(path):
    name = urlparse(f)
    return os.path.basename(name.path)

files = getAllFiles(path)
for f in files:
    #name = urlparse(f)
    #print(a.path)   
    #print(os.path.basename(name.path))
    print(getFileName(f))
