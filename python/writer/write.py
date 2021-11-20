import dependency

from argsHandle import *
from fileHandle import *

args = getArgs(["fn","txt"])

writeFile(args.fn,args.txt)
