# gandamu

Debian 9 Stretch - KDE Plasma Desktop (Vagrant)

### setup

Provision with `Vagrant` or `Docker`

* [Vagrant box nobiki/gandamu - Vagrant Cloud](https://app.vagrantup.com/nobiki/boxes/gandamu)
* [nobiki/gandamu - Docker Hub](https://hub.docker.com/r/nobiki/gandamu/)

Use the setup script in the `include` directory to create your favorite desktop. Please refer to "setup.sh.example" for sample of shell provisioning.

### usage

* Vagrant (GUI,CUI)

After `vagrant up`, Access the GUI desktop via VirtualBox. You can also create shortcuts in the bat file for Windows (vagrant up.bat, vagrant halt.bat).

* Docker (CUI)

Access the container through `docker exec -it -u vagrant -w /home/vagrant gandamu bash -l`. `make tty` can be substituted.

### backup

* Vagrant

Save the backup with rsync. In the `backup.lst` file, create a list of the directories you want to back up.  
Then run "backup.sh" at an arbitrary timing (at the same time as `vagrant up` or periodically with `crontab`, etc.).

* Docker

Please mount the host directory using `volumes` of `docker-compose.yml`.

```
volumes:
  - ${PWD}/gandamu/home/vagrant/.ssh/:/home/vagrant/.ssh/
  - ${PWD}/gandamu/var/workspace/:/var/workspace/
  - ${PWD}/gandamu/etc/supervisor/conf.d/:/etc/supervisor/conf.d/
  - ${PWD}/gandamu/etc/nginx/conf.d/:/etc/nginx/conf.d/
```


