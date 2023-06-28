#!/usr/bin/env python3

import os
import sys
from time import localtime, strftime

if __name__ == '__main__':
    path = '.'
    if len(sys.argv) > 1 and os.DirEntry.is_dir(sys.argv[1]):
        path = sys.argv[1]


print('Directory:', path)
print('+-----+--------+-------------------+----------------')
print(' Type | SizeMb |      Modified     |     Name')
print('+-----+--------+-------------------+----------------')
output = []
with os.scandir(path) as it:
    for entry in it:
        obj = os.stat(entry)
        timestamp = strftime("%Y-%b-%d-%H:%M", localtime(obj.st_mtime))
        if entry.is_file():
            description = ['file',
                           round(obj.st_size*1000/1024/1024)/1000,
                           timestamp,
                           entry.name, ]
        elif entry.is_dir():
            description = ['dir ',
                           round(obj.st_size*1000/1024/1024)/1000,
                           timestamp,
                           entry.name, ]
        else:
            description = ['link',
                           0.001,
                           timestamp,
                           entry.name, ]
        output.append(description)
    it.close()

for i in output:
    print(" "+f"{i[0]}   {i[1]}    {i[2]}   {i[3]}")