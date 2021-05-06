import sys
import os

wdir = os.path.dirname(os.path.realpath(__file__))


sys.path.append(wdir)
sys.path.append(wdir+"/../functions")

from fileHandle import *

from os import chdir
from os import getcwd

#edit this
from test2 import *

from subprocess import call

import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument("code",type=str)
#parser.add_argument("word",type=str)

code = parser.parse_args().code
#match = parser.parse_args().word

chdir(code)
chdir("..")

fold = ls(".","*")

variables = ""

for f in fold:
    if(os.path.isfile(f)):
        #print(f)
        var = getVariables(f,"",";")
        if(var != "" or not var):
            variables = variables+";"+var
    else:
        chdir(f)
        
        files = ls(".","*.*")

        for fi in files:
            #print(fi)
            try:
                var = getVariables(fi,"",";")
                if(var != "" or not var):
                    variables = variables+";"+var
            except:
                dummy = ""
                print("error")
            
        
        chdir("..")

#variables = variables.replace(";","")
#variables = removeBreakLine(variables)
arr = variables.split(";")
arr = list(dict.fromkeys(arr))
arr2 = []
for val in arr:
    arr2.append(val.split("=")[0])

#del variables
variables = " "
variables = variables.join(arr2)

