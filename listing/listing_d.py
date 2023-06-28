#!/usr/bin/env python3

import os
import sys


if __name__ == '__main__':
    path = '.'
    if len(sys.argv) > 1 and os.DirEntry.is_dir(sys.argv[1]):
        path = sys.argv[1]


with os.scandir(path) as it:
    output = []
    for entry in it:
        obj = os.stat(entry)
        if entry.is_file():
            description = {'Name': entry.name,
                           'SizeMb': round(obj.st_size*1000/1024/1024)/1000,
                           'Modified': obj.st_mtime,
                           'ObjType': 'file'}
        elif entry.is_dir():
            description = {'Name': entry.name,
                           'SizeMb': round(obj.st_size*1000/1024/1024)/1000,
                           'Modified': obj.st_mtime,
                           'ObjType': 'directory'}
        else:
            description = {'Name': entry.name,
                           'SizeMb': 0.001,
                           'Modified': obj.st_mtime,
                           'ObjType': 'link'}
        print(description)
        output.append(description)