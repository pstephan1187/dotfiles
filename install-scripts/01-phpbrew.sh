#!/usr/bin/bash

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew

chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/phpbrew

phpbrew init
phpbrew lookup-prefix homebrew

# Get the current php versions, remove comments, get the latest subversion, get the latest patch, remove the comma
PHP_VERSION=$(phpbrew known | grep "^\d" | head -1 | cut -d' ' -f2 | cut -d',' -f1);

phpbrew install -j $(nproc) $PHP_VERSION +everything

brew install composer
