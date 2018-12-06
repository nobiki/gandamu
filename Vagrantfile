# -*- mode: ruby -*-
# vi: set ft=ruby :
# A dummy plugin for Barge to set hostname and network correctly at the very first `vagrant up`
module VagrantPlugins
  module GuestLinux
    class Plugin < Vagrant.plugin("2")
      guest_capability("linux", "change_host_name") { Cap::ChangeHostName }
      guest_capability("linux", "configure_networks") { Cap::ConfigureNetworks }
    end
  end
end

Vagrant.configure(2) do |config|
  config.vm.box = "nobiki/gandamu"
  config.vm.box_version = "1.0"
  # config.vm.box = "gandamu.box"
  config.vm.define "gandamu"

  # config.disksize.size = '200GB'
  # config.vbguest.auto_update = true
  config.vm.network "private_network", ip: "192.168.56.100"
  config.vm.provision :shell, path: "provision.sh", privileged: true

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = 8192 # MB
    vb.gui = true

    vb.customize [
      "modifyvm", :id,
      "--vram", "256",
      "--monitorcount", "2",
      "--clipboard", "bidirectional",
      "--accelerate3d", 'off',
      "--hwvirtex", "on",
      "--nestedpaging", "on",
      "--largepages", "on",
      "--chipset", "ich9",
      "--ioapic", "on",
      "--pae", "off",
      "--paravirtprovider", "kvm",
    ]

    # vb.customize [
    #   "storageattach", :id,
    #   "--storagectl", "IDE",
    #   "--port", "0", "--device", "1",
    #   "--type", "dvddrive",
    #   "--medium", "emptydrive"
    # ]

    # VNC port
    # config.vm.network :forwarded_port, guest: 15900, host: 15900
    # config.vm.network :forwarded_port, guest: 15901, host: 15901
  end
end
