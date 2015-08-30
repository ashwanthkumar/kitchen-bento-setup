# Kitchen Bento Setup
This is out of frustration with [mitchellh/vagrant#5492](https://github.com/mitchellh/vagrant/issues/5492). This setup helps you get the base CentOS 6.6 box from Opscode install custom stuff and re-package it for using them with KitchenCI. For some unknown reasons running `vagrant package` works but re-packaging after that doesn't seem to work. This is an attempt at automating that and also provides clear visibility on what all gets pre-installed in the test environment that needs attention on the production machines. 

## To build the box
Since we run all our setup as part of provisioning process, it is enough if you just do `vagrant up`. For convience I've also added `build.sh` which looks for any existing VMs, destroy them and launches a new one and creates a `opscode-centos-66-v${VERSION}.box` file. `VERSION` is from VERSION file. 

Everytime you make some changes please run `release.sh`. It builds and increments the VERSION file.

### NOTE
I would love to use Packer for this, but [mitchellh/packer#869](https://github.com/mitchellh/packer/issues/869) prevents me :(
