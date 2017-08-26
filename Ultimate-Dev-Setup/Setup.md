# Ultimate Dev Setup

## Install and Configure

### Start the following downloads
Atom - https://atom.io/
MySQL MAc OSX Latest Disk Image https://dev.mysql.com/downloads/file/?id=471631

### Atom and Plugins

### Terminal

#### .bash_profile

    1. open Terminal
    2. touch ~/.bash_profile
    3. open -a Atom ~/.bash_profile

### Keyboard Maestro
Keyboard utility for shortcuts and boilerplate content

### Git (https://www.atlassian.com/git/tutorials/install-git)

### Homebrew an Node.js
Package Manager for Mac  -All applications, not just Node

Node = JS Server Application (Like PHP)
NPM = Package Manager for Node Repos

This approach to installing Brew and Node is all you need.
https://treehouse.github.io/installation-guides/mac/node-mac.html

Individual Installers
Download and run installer https://brew.sh/
Standalone installer https://nodejs.org/en/download/


### Web Serevr Setup - Apache, PHP and MySQL

#### Apache
Apache is already installed on your mac. Some will kill the native and install their own. Either for control, or to match their detsination environment. If you do plan on matching destination - I have heard good things about docker. I used the native - would like to be familiar with defaults before an overhaul.

https://coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-macos-sierra/

#### PHP
PHP comes preinstalled

#### MySQL
NOTE: BE SURE TO COPY PASSWORD AFTER INSTALL

You need to download and install MySQL - i Used the disk image installer
https://dev.mysql.com/downloads/file/?id=471631

For some reason teh commands to reset password would not work for me, perhaps the latest version stores elsewhere.

You need to add the folloowing to .bash_profile

    export PATH=${PATH}:/usr/local/mysql/bin

Then log in using password

    1. mysql -u USERNAME -p
    2. Provide password you copied after installing MySQL
    3. ALTER USER 'root'@'localhost' IDENTIFIED BY 'loc@l';


#### Did not
Manage Socket Issue? Does not seem to matter, or if it was just for PhpMyAdmin installation.
Install phpMyAdmin  -I use sequel pro  -I may use PhpMyAdmin for other things in the future.


### Mac Virtual Hosts
https://jason.pureconcepts.net/2014/11/configure-apache-virtualhost-mac-os-x/

1. Update Appache config httpd.config

    open -a Atom /etc/apache2/httpd.conf

2. Create Your Own VHosts folder and conig files
Modular - so much easier than all in one file. I love it.

        sudo su
        cd /etc/apache2/
        mkdir vhosts
        cd vhosts
        // See notes - this is for the defaul localhost, redundant but allows us to config
        touch _default.conf
        touch domain.com.conf

3. Update Hosts File
        open -a Atom /etc/hosts

4. Worked like a charm. Don't forget to:

        apachectl restart
        apachectl configtest
        dscacheutil -flushcache

















