from common import *
from os.path import dirname,realpath

for n in getLines(dirname(realpath(__file__))+"/.memorized"):
    print(n,end=",,")
