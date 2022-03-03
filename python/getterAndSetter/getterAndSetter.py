import java
import php
import py

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

def write(fname,getter,setter):
    from os import remove

    lines = getLines(fname)

    flag = False
    if("}" in lines[-1]):
        lines[-1] = ""
        flag = True
    elif(lines[-1] == "" and lines[-2] == "}"):
        lines[-2] = ""
        flag = True
    
    remove(fname) 
    
    f = open(fname,"w")
    for n in lines:
        f.write(n+"\n")

    f.write(getter+"\n\n")
    f.write(setter+"\n")
    
    if(flag):
        f.write("}")
    
    f.close()
    #f = open(fname,"w")
    #f.write(newfile)
    #f.close()

try:
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
        elif("=" in line):
            variables.append(line)

    for var in variables:
        if(fn.split(".")[-1] == "java"):
            #print("")
            #print(java.getter(var))
            #print("")
            #print(java.setter(var))
            write(fn,java.getter(var),java.setter(var))
        elif(fn.split(".")[-1] == "php"):
            #print("")
            #print(php.getter(var))
            #print("")
            #print(php.setter(var))
            write(fn,php.getter(var),php.setter(var))
        elif(fn.split(".")[-1] == "py"):
            #print("")
            #print(py.getter(var))
            #print("")
            #print(py.setter(var))
            write(fn,py.getter(var),py.setter(var))
except:
    print("")
    print("save file first.")
