def indent():
    return "    "

def fn(variable):
    return variable.replace(variable[0:1],variable[0:1].capitalize(),1)

def getter(line):
    tmp = line.split("=")[0].replace(" ","").replace("\t","").replace("\r","").replace("\n","")

    return indent()+"def get"+fn(tmp.replace("__",""))+"(self):\n"+indent()+indent()+"return self."+tmp

def setter(line):
    tmp = line.split("=")[0].replace(" ","").replace("\t","")

    return indent()+"def set"+fn(tmp.replace("__",""))+"(self,"+tmp.replace("__","")+"):\n"+indent()+indent()+"self."+tmp+" = "+tmp.replace("__","")


