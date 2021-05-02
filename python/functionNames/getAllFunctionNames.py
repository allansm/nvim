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

code = parser.parse_args().code



chdir(code)
chdir("..")

fold = ls(".","*")


functions = ""

for f in fold:
    if(os.path.isfile(f)):
        #print(f+";",end='')
        fun = getFunctions(f,"",";")
        if(fun != "" or not fun):
            functions = functions+";"+fun
    else:
        chdir(f)
        #print(f+";",end='')
        files = ls(".","*.*")

        for fi in files:
            try:
                fun = getFunctions(fi,"",";")
                if(fun != "" or not fun):
                    functions = functions+";"+fun
            except:
                dummy = ""
        
        chdir("..")

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

functions = functions.replace(";"," ")

functions = functions[:len(functions) -1]

functions = removeBreakLine(functions)

print(functions,end = '')

#call("echo "+functions,shell=True)
