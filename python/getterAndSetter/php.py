def fn(variable):
    return variable.replace(variable[0:1],variable[0:1].capitalize(),1)

def getter(line):
    mod = ""
    if "static" in line:
        mod = "static "

    tmp = line.split()
    tmp[-1] = tmp[-1].replace(";","")

    generated = "\tpublic "+mod+"function get"+fn(tmp[-1].replace("$",""))+"(){\n\t\t"+"return $this->"+tmp[-1].replace("$","")+";\n\t}"
    
    return generated

def setter(line):
    mod = ""
    if "static" in line:
        mod = "static "

    tmp = line.split()
    tmp[-1] = tmp[-1].replace(";","")

    generated = "\tpublic "+mod+"function set"+fn(tmp[-1].replace("$",""))+"("+tmp[-1]+"){\n\t\t"+"$this->"+tmp[-1].replace("$","")+" = "+tmp[-1]+";\n\t}"
    
    return generated

