import dependency

from argsHandle import *
from fileHandle import *

args = getArgs(["fn","txt"])

remove(args.fn)
writeFile(args.fn,args.txt)
