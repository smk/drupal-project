#!/bin/sh

# Prepare the settings file for installation
if [ ! -f htdocs/sites/default/settings.php ]
  then
    cp htdocs/sites/default/default.settings.php htdocs/sites/default/settings.php
    chmod 777 htdocs/sites/default/settings.php
fi

# Prepare the services file for installation
if [ ! -f htdocs/sites/default/services.yml ]
  then
    cp htdocs/sites/default/default.services.yml htdocs/sites/default/services.yml
    chmod 777 htdocs/sites/default/services.yml
fi

# Prepare the files directory for installation
if [ ! -d htdocs/sites/default/files ]
  then
    mkdir -m777 htdocs/sites/default/files
fi
