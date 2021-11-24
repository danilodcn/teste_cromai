import os
import sys

from app.app import program


_, time, filename = sys.argv

try:
    program(float(time), filename)

except KeyError:
    if os.path.isfile(filename):
        os.remove(filename)

    raise KeyboardInterrupt("exit")
