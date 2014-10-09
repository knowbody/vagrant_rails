# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANT_API_VERSION = "2"
Vagrant.configure(VAGRANT_API_VERSION) do |config|

	config.vm.define "postgres" do |v|
		v.vm.provider "docker" do |d|
			d.image = "paintedfox/postgresql"
			d.volumes = ["/var/docker/postgresql:/data"]
			d.ports = ["5432:5432"]
			d.env = {
				USER: "root",
				PASS: "zaq1@WSX"
				DB: "root"
			}
			d.vagrant_vagrantfile = "./Vagrantfile.proxy"
		end
	end

	config.vm.define "elasticsearch" do |v|
		v.vm.provider "docker" do |d|
			d.image = "dockerfile/elasticsearch"
			d.ports = ["9200:9200"]
			d.vagrant_vagrantfile = "./Vagrantfile.proxy"
		end
	end
