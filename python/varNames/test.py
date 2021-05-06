import sys
import os

wdir = os.path.dirname(os.path.realpath(__file__))


sys.path.append(wdir)
sys.path.append(wdir+"/../functions")

from fileHandle import *

from os import chdir
from os import getcwd
from fn import *
from subprocess import call

import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument("code",type=str)
parser.add_argument("word",type=str)

code = parser.parse_args().code
#match = parser.parse_args().word

chdir(code)
chdir("..")

fold = ls(".","*")

variables = ""

for f in fold:
    

