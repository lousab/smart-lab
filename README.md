# smart@lab

Smart@lab is a school kickstart installation to create an open source and basics of robotics computer lab. You have two kickstart file to test the installation on a VM.

### Installation
Installation is very easy and you can follow steps below:

* Download Ubuntu Mini ISO [here](https://help.ubuntu.com/community/Installation/MinimalCD)
* Copy kickstart example renaming file as your_file_name.ks
* Put a copy of this file on a share or web server
* Start the kickstart installation by specifying the boot parameter ks= for example:
```sh
linux initrd=initrd.gz -- ks=http://path/to/ks.cfg
```
* Then wait untill the installation finish

### After Installation
The school computer lab needs to be under control by theachers. So you can configure epoptes following [these instructions](http://www.epoptes.org/installation)

