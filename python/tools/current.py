from os.path import dirname, basename
from os import getcwd, chdir, system
from time import sleep
from glob import glob

import os

chdir(dirname(__file__))
chdir("../..")

while(True):
    f = open(".current")
    current = f.read()
    f.close()

    print(current+"\n")
    for n in glob(current+"/*"):
        print("\t"+basename(n))

    sleep(10)
    
    system("cls" if os.name=="nt" else 'printf "\033c"')
