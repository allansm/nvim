def getLines(fname):
    f = open(fname,"r")
    tmp = f.read()
    f.close()

    return tmp.split("\n")

def getAllFilesPath(path,lamb=None):
    import os

    fold = os.walk(path)
    ret = []
    for root, dirs, files in fold:
        for name in files:
            if(lamb != None):
                lamb(os.path.realpath(os.path.join(root, name)))

            ret.append(os.path.realpath(os.path.join(root, name)))

    return ret

