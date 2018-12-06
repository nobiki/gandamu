#!/bin/bash

if [ ! -e /bootstrap.lock ]; then
  # cd /home/vagrant/gandamu && setup.sh

  touch /bootstrap.lock
fi

/usr/bin/supervisord -n
