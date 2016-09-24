#!/usr/bin/python
# smart@conf.py

import apt
import sys
import os

#Check for root
if not os.geteuid()==0:
    sys.exit("\nOnly root can run this script\n")

#update
update = "sudo apt-get update -y && sudo apt-get upgrade -y"
os.system(update)	
	
# inst edu pack
pkg_name = "ubuntu-edu-primary"
cache = apt.cache.Cache()
cache.update()
cache.open()

pkg = cache[pkg_name]
if pkg.is_installed:
    print "{pkg_name} already installed".format(pkg_name=pkg_name)
else:
    pkg.mark_install()
    
try:
cache.commit()
except Exception, arg:
print >> sys.stderr, "Sorry, package installation failed [{err}]".format(err=str(arg))    
