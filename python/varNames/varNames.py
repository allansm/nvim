import sys
import os

wdir = os.path.dirname(os.path.realpath(__file__))


sys.path.append(wdir)
sys.path.append(wdir+"/../functions")

from fileHandle import *

from os import chdir
from os import getcwd

from vn import *

from subprocess import call

import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument("code",type=str)
parser.add_argument("match",type=str)

code = parser.parse_args().code
match = parser.parse_args().match

chdir(code)
chdir("..")

fold = ls(".","*")

variables = ""

for f in fold:
    if(os.path.isfile(f)):
        var = getVariables(f,"",";")
        if(var != "" or not var):
            variables = variables+";"+var
    else:
        chdir(f)
        
        files = ls(".","*.*")

        for fi in files:
            try:
                var = getVariables(fi,"",";")
                if(var != "" or not var):
                    variables = variables+";"+var
            except:
                dummy = ""
                print("error")
            
        
        chdir("..")

arr = variables.split(";")
arr = list(dict.fromkeys(arr))
arr2 = []
for val in arr:
    tmp = val.split("=")[0]
    if not "." in tmp:
        if not "," in tmp:
            if not "(" in tmp:
                if not "\"" in tmp:
                    if not "+" in tmp:
                        if not "#" in tmp:
                            if tmp.startswith(match):
                                tmp = tmp.replace(match,"")
                                arr2.append(tmp)
                            
                            elif match == "@":
                                arr2.append(tmp)

variables = ""
arr2 = list(dict.fromkeys(arr2))
variables = variables.join(arr2)

print(variables)
