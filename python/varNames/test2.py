import sys

sys.path.append("..\\functions\\")

from fileHandle import *
from os import chdir

def getVariables(fn,txt,tok):
    #print(fn)
    lines = getLines(fn)
    
    variables = ""

    for line in lines:
        #print(line)
        if "=" in line:
            if "\"" not in line:
                if "==" not in line:
                    if "if" not in line:
                        if "," not in line:
                            #print("yes")
                            variables = variables+tok+txt+line.strip()

    return variables
