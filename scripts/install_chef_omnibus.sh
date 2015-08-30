# NOTE - If we decide to change the version on .kitchen.yml it is good to update this as well
# Helps a lot in local development so not every VM will have to do the Omnibus installation
curl -L https://www.chef.io/chef/install.sh | sudo bash -s -- -v 11.14.2
