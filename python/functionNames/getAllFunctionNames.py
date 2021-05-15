import sys
import os

wdir = os.path.dirname(os.path.realpath(__file__))


sys.path.append(wdir)
sys.path.append(wdir+"/../functions")

from fileHandle import *

from os import chdir
from os import getcwd
from fn import *
from subprocess import call

import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument("code",type=str)
parser.add_argument("word",type=str)
parser.add_argument("ext",type=str)

code = parser.parse_args().code
match = parser.parse_args().word
ext = parser.parse_args().ext

chdir(code)
chdir("..")

functions = ""

files = getAllFiles(".")

for f in files:
    fun = ""
    if("."+ext in getFileName(f)): 
        try:
            fun = getFunctions(f,"",";")
            if(fun != "" or not fun):
                functions = functions+";"+fun
        except:
            dummy = ""



functions = functions.replace(";","")
functions = removeBreakLine(functions)
functions = functions.replace("{",";")
functions = functions.replace(":",";")
functions = functions.replace("def ","")
functions = functions.replace("function ","")
functions = functions.replace("/","")
functions = functions.replace("*","")
functions = functions.replace(" ","")
functions = functions.replace("$","")

#test
functions = functions.replace("public","")
functions = functions.replace("static","")
functions = functions.replace("void","")
functions = functions.replace("int","")
functions = functions.replace("float","")
functions = functions.replace("bool","")
functions = functions.replace("string","")
#

functions = functions.replace(";"," ")

functions = functions[:len(functions) -1]

functions = removeBreakLine(functions)

arr = functions.split()
arr = list(dict.fromkeys(arr))

i = 0
arr2 = []
if(match != "@"):
    for e in arr:
        if(e.startswith(match)):
            arr2.append(e.replace(match,""))   
        i = i+1
else:
    arr2 = arr
fu = " "
fu = fu.join(arr2)

print(fu)

