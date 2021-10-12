import dependency

from fileHandle import *
from argsHandle import *


args = getArgs(["ext","txt"])
ext = args.ext
ext = ext.replace(".","")

writeFile(selfLocation(__file__)+"/"+ext+".config",args.txt+"\n")
