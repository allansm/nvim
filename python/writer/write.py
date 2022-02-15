def getArgs():
    import argparse
    
    parser = argparse.ArgumentParser()
    
    parser.add_argument("fn")
    parser.add_argument("txt")
    
    return parser.parse_args()

args = getArgs()

file = open(args.fn,"w")
file.write(args.txt)
file.close()
