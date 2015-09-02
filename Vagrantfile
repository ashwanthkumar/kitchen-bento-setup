# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "base-opscode-centos-66"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.6_chef-provisionerless.box"
  config.vm.box_download_checksum_type = "md5"
  config.vm.box_download_checksum = "b6f1d0287a27b5eff76b8a97a29d17ee"

  config.ssh.insert_key = false

  config.vm.provision "shell", path: "scripts/install_java.sh"
  config.vm.provision "shell", path: "scripts/install_build_tool.sh"
  config.vm.provision "shell", path: "scripts/install_chef_omnibus.sh"
  config.vm.provision "shell", path: "scripts/install_git.sh"

  # Do the regular clean up of the instance so that we can package
  config.vm.provision "shell", path: "scripts/clean_instance.sh"
end
