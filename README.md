# gandamu

Debian KDE Plasma Desktop (Vagrant)

### setup

Provision with `Vagrant`

* [Vagrant box nobiki/gandamu - Vagrant Cloud](https://app.vagrantup.com/nobiki/boxes/gandamu)

Use the setup script in the `include` directory to create your favorite desktop. Please refer to "setup.sh.example" for sample of shell provisioning.

### usage

* Vagrant

After `vagrant up`, Access the GUI desktop via VirtualBox. You can also create shortcuts in the bat file for Windows (`vagrant up.bat`, `vagrant halt.bat`).

### backup

* Vagrant

Save the backup with rsync. In the `backup.lst` file, create a list of the directories you want to back up.  
Then run "backup.sh" at an arbitrary timing (at the same time as `vagrant up` or periodically with `crontab`, etc.).

