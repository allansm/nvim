import argparse

parser = argparse.ArgumentParser(description='')

parser.add_argument("op",type=str)
parser.add_argument("code",type=str)

op = parser.parse_args().op

code = parser.parse_args().code



def indent():
    return "    "

def getter(line):
    tmp = line.split()
    tmp[2] = tmp[2].replace(";","")

    generated = indent()+"public "+tmp[1]+" get"+tmp[2].capitalize()+"(){\n"+indent()+indent()+"return this."+tmp[2]+";\n"+indent()+"}"
    return generated

def setter(line):
    tmp = line.split()
    tmp[2] = tmp[2].replace(";","")
    generated = indent()+"public void set"+tmp[2].capitalize()+"("+tmp[1]+" "+tmp[2]+"){\n"+indent()+indent()+"this."+tmp[2]+" = "+tmp[2]+";\n"+indent()+"}"
    return generated

if(op == "g"):
    print(getter(code))

elif(op == "s"):
    print(setter(code))

elif(op == "gs"):
    print(getter(code))
    print(setter(code))

