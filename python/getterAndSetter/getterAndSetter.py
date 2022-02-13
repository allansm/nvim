import java
import php

def getLines(fname):
    f = open(fname,"r")
    tmp = f.read()
    f.close()

    return tmp.split("\n")


def getArgs():
    import argparse
    
    parser = argparse.ArgumentParser()
    parser.add_argument("filename")
    
    return parser.parse_args()

fn = getArgs().filename

lines = getLines(fn)

variables = []

for line in lines:
    if("public " in line):
        if(";" in line):
            variables.append(line)
    elif("private "in line):
        if(";" in line):
            variables.append(line)

for var in variables:
    if(fn.split(".")[-1] == "java"):
        print("")
        print(java.getter(var))
        print("")
        print(java.setter(var))
    elif(fn.split(".")[-1] == "php"):
        print("")
        print(php.getter(var))
        print("")
        print(php.setter(var))

