def fn(variable):
    return variable.replace(variable[0:1],variable[0:1].capitalize(),1)

def getter(line):
    mod = ""
    if "static" in line:
        mod = "static "

    tmp = line.split()
    tmp[-1] = tmp[-1].replace(";","")

    generated = "\tpublic "+mod+tmp[-2]+" get"+fn(tmp[-1])+"(){\n\t\treturn this."+tmp[-1]+";\n\t}"
    return generated

def setter(line):
    mod = ""
    if "static" in line:
        mod = "static "

    tmp = line.split()
    tmp[-1] = tmp[-1].replace(";","")
    generated = "\tpublic "+mod+"void set"+fn(tmp[-1])+"("+tmp[-2]+" "+tmp[-1]+"){\n\t\tthis."+tmp[-1]+" = "+tmp[-1]+";\n\t}"
    return generated

