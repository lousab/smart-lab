# smart@lab

Smart@lab is a school kickstart installation to create an open source and basics of robotics computer lab. You have two kickstart file to test the installation on a VM.

### Installation
Installation is very easy and you can follow steps below:

* Download Ubuntu Mini ISO [here](https://help.ubuntu.com/community/Installation/MinimalCD)
* Copy kickstart example renaming file as your_file_name.ks
* Start the kickstart installation by specifying the boot parameter ks= for example:
```sh
linux initrd=initrd.gz -- ks=http://path/to/ks.cfg
```
