********************************************
# You can create a virtual environment and you can install all your libraries in a directory of the virtual environment. In this case you don't need to install a library at the OS level.

root@scriptbox:~# pip install virtualenv                <---installing
root@scriptbox:~# virtualenv automation-env
created virtual environment CPython3.8.10.final.0-64 in 1332ms
...
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator

root@scriptbox:~# ls
automation-env  snap
root@scriptbox:~# ls automation-env -l
total 12
drwxr-xr-x 2 root root 4096 Oct 17 10:09 bin
drwxr-xr-x 3 root root 4096 Oct 17 10:09 lib
-rw-r--r-- 1 root root  207 Oct 17 10:09 pyvenv.cfg
root@scriptbox:~# cd automation-env
root@scriptbox:~/automation-env# source bin/activate    <--- activating
(automation-env) root@scriptbox:~/automation-env#
(automation-env) root@scriptbox:~/automation-env# pip install jenkinsapi
Collecting jenkinsapi
...
Installing collected packages: pytz, urllib3, six, idna, charset-normalizer, certifi, requests, jenkinsapi
Successfully installed certifi-2023.7.22 charset-normalizer-3.3.0 idna-3.4 jenkinsapi-0.3.13 pytz-2023.3.post1 requests-2.31.0 six-1.16.0 urllib3-2.0.6
(automation-env) root@scriptbox:~/automation-env# deactivate
                                                        <--- deactivating

# So You can have different versions of the libraries in different environments in the same machine. Different versions without interfering with OS Python.