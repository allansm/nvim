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
    tmp[1] = tmp[1].replace(";","")

    generated = indent()+"public function get"+tmp[1].replace("$","").capitalize()+"(){\n"+indent()+indent()+"return $this->"+tmp[1].replace("$","")+";\n"+indent()+"}"
    
    return generated

def setter(line):
    tmp = line.split()
    tmp[1] = tmp[1].replace(";","")

    generated = indent()+"public function set"+tmp[1].replace("$","").capitalize()+"("+tmp[1]+"){\n"+indent()+indent()+"$this->"+tmp[1].replace("$","")+" = "+tmp[1]+";\n"+indent()+"}"
    
    return generated

if(op == "g"):
    print(getter(code))

elif(op == "s"):
    print(setter(code))

elif(op == "gs"):
    print(getter(code))
    print(setter(code))

