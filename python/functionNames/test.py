import os

import sys
sys.path.append("../functions")

from fileHandle import *

path = input("path:")

def getAllFiles(path):
    fold = os.walk(path)
    ret = []
    for root, dirs, files in fold:
        for name in files:
            f = os.path.join(root, name)
            ret.append(f)
            #print(f)

    return ret


files = getAllFiles(path)
#getAllFiles(path)
for f in files:
    print(f)
