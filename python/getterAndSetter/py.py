def fn(variable):
    return variable.replace(variable[0:1],variable[0:1].capitalize(),1)

def getter(line):
    tmp = line.split("=")[0].replace(" ","").replace("\t","")

    return "def get"+fn(tmp.replace("__",""))+"(self):\nreturn self."+tmp

def setter(line):
    tmp = line.split("=")[0].replace(" ","").replace("\t","")

    return "def set"+fn(tmp.replace("__",""))+"(self,"+tmp.replace("__","")+"):\nself."+tmp+" = "+tmp.replace("__","")


