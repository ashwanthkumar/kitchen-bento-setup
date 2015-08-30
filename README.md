# Kitchen Bento Setup
This is out of frustration with [#5492](https://github.com/mitchellh/vagrant/issues/5492). This setup helps you get the base CentOS 6.6 box from Opscode install custom stuff and re-package it for using them with KitchenCI. For some unknown reasons running `vagrant package` works but re-packaging after that doesn't seem to work. This is an attempt at automating that and also provides clear visibility on what all gets pre-installed in the test environment that needs attention on the production machines. 
