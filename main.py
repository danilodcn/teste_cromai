from app.app import program
import os, sys

_, time, filename = sys.argv

file = 'pid'
try:
    program(float(time), filename)

except KeyError:
    if os.path.isfile(file):
        os.remove(file)
    
    raise KeyboardInterrupt("exit")