# Ultimate Dev Setup

## Install and Configure

### Start the following downloads
Atom - https://atom.io/
MySQL MAc OSX Latest Disk Image https://dev.mysql.com/downloads/file/?id=471631

### Atom and Plugins

---

### Terminal

---

#### .bash_profile

    1. open Terminal
    2. touch ~/.bash_profile
    3. open -a Atom ~/.bash_profile

---

### Keyboard Maestro
Keyboard utility for shortcuts and boilerplate content

---

### Git (https://www.atlassian.com/git/tutorials/install-git)

---

### Homebrew, Node.js, and Gulp
Homebrew = Package Manager for Mac-All applications, not just Node

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Node = JS Server Application (Like PHP)
NPM = Package Manager for Node Repos

```
brew install node
```

Gulp - Task runner for compiling your CSS and JS, amongst other things

```
npm install --global gulp-cli
```

References for more Deets
* [Comprehensive Straightforward Guide to Setting Up a Gulp Workflow](https://www.taniarascia.com/getting-started-with-gulp/)
* [Installing Node.js and NPM](https://treehouse.github.io/installation-guides/mac/node-mac.html)

Individual Installers
* Download and run installer https://brew.sh/
* Standalone installer https://nodejs.org/en/download/

---

### Web Serevr Setup - Apache, PHP & MySQL

#### Apache
Apache is already installed on your mac. Some will kill the native and install their own. Either for control, or to match their detsination environment. If you do plan on matching destination - I have heard good things about docker. I used the native - would like to be familiar with defaults before an overhaul.

https://coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-macos-sierra/

#### PHP
PHP 5.6 comes preinstalled, and you can upgrade to 7.0 or 7.1. I matched my remote server environment at 7.0
https://coolestguidesontheplanet.com/upgrade-php-on-osx/

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
Every time Mac updates it seems to replace my configuration. Kills my apps.

Had to update httpd.conf
uncomment a few lines
add Allow All to <Document> in a couple of places. See link below.

Updated for Mac OS High Sierra
http://www.epigroove.com/blog/laravel-routes-not-working-make-sure-htaccess-is-working

This guy helped me separate my vhost for each account. Super cool.
https://jason.pureconcepts.net/2014/11/configure-apache-virtualhost-mac-os-x/

1. Update Appache config httpd.config
```
open -a Atom /etc/apache2/httpd.conf
```
2. Create Your Own VHosts folder and conig files
Modular - so much easier than all in one file. I love it.

```    
sudo su
cd /etc/apache2/
mkdir vhosts
cd vhosts
// See notes - this is for the defaul localhost, redundant but allows us to config
touch _default.conf
touch domain.com.conf
```
3. Update Hosts File
```
open -a Atom /etc/hosts
```

4. Worked like a charm. Don't forget to:
```
apachectl restart
apachectl configtest
dscacheutil -flushcache
```


### Laravel - PHP Framework
https://laravel.com/

#### Composer - Vendor Package Manager
https://getcomposer.org/download/

After Installing

```
mv composer.phar /usr/local/bin/composer
```

#### Install Laravel
https://laravel.com/docs/5.5/installation

Make sure you have latest version of system requirements. I had to update my PHP and PHP CLI to 7.0. Also had to reprof to get it to work. See installing PHP above.

```
composer global require "laravel/installer" //will create default folder laravel, installs latest version that works with your version of PHP
composer global require "laravel/installer" projectfoldername // create your own folder
composer global require "laravel/installer"=5.5 projectfoldername //choose the version of Laravel you wish to install
composer global require "laravel/installer" . //current directory, does not work if something is already in folder. hidden files too.
```
If Laravel lives in subfolder, read the following. This is also a great way to understand how the structure of Laravel works.
https://laravel-news.com/subfolder-install















