import argparse

parser = argparse.ArgumentParser(description='')

parser.add_argument("op",type=str)
parser.add_argument("code",type=str)

op = parser.parse_args().op

code = parser.parse_args().code

def fn(variable):
    return variable.replace(variable[0:1],variable[0:1].capitalize(),1)
def indent():
    return "    "

def getter(line):
    mod = ""
    if "static" in line:
        mod = "static "

    tmp = line.split()
    tmp[-1] = tmp[-1].replace(";","")

    generated = "public "+mod+tmp[-2]+" get"+fn(tmp[-1])+"(){\n"+indent()+"return this."+tmp[-1]+";\n}"
    return generated

def setter(line):
    mod = ""
    if "static" in line:
        mod = "static "

    tmp = line.split()
    tmp[-1] = tmp[-1].replace(";","")
    generated = "public "+mod+"void set"+fn(tmp[-1])+"("+tmp[-2]+" "+tmp[-1]+"){\n"+indent()+"this."+tmp[-1]+" = "+tmp[-1]+";\n}"
    return generated

if(op == "g"):
    print("")
    print(getter(code))

elif(op == "s"):
    print("")
    print(setter(code))

elif(op == "gs"):
    print("")
    print(getter(code))
    print(setter(code))

