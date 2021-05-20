import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument("line",type=str)
parser.add_argument("start",type=str)

line = parser.parse_args().line

start = parser.parse_args().start

print(line[int(start):])


