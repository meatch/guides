# Ideal Workflow

## Overall Process
Local
	Everything Spawns from here
		git, npm & package.json, gulp
	rsync production||staging server files
	Virtual Host to mimic domain root dev.domain.com
	All dependencies are local, concatenated and compressed
	Local Database (no MAMP, MYSQL serves at boot)
		1) Export Import database to local system
		2) Keep local connected to server database if no data will be altered.

QA (Client Testing)
	Git Push for client testing.

Production (Live Site)
	Git Push final changes


## Setup
Github repository of bare website
	(index.php, package.json, .gitignore, gulpfile.js, assets[sass, bootstrap, jquery])
git pull bare website
run npm install
configure gulpfile.js point to assets folder.


## Details

### RSync Live site changes to local
assumes you have passwordless ssh - otherwise it asks for pass?

Flags
-chavzP = forces overwrite so it mirrors live.
-hvrPt  = If you wish to not overwrite local files that are newer than the server.

SSH root@ip-or-domain.com

Remote Dir
/path/to/remote/dir/

Local Dir
	- could probably just use the period .
	- have not tested it though
./

Examples
rsync -hvrPt --stats username@ip-or-domain.com:/path/to/remote/dir/ ./
rsync -hvrPt --stats root@ip-or-domain.com:/home/tca/public_html/dev.teamcrossfitacademy.com/wp-content/themes/tca/ ./

### Local Gulp
watch
	Sass Conversion and Min - no vanilla CSS
	JavaScript Concat and Minification

### Local Testing Server
Optional Local Database
Keep this separate - we can always download the db and run it locally if need be.

### Gulp Git Push When Ready to go live
gulp gitsend -m "Message for change" [Git add, commit, push]



## Setting Up Virtual Host
https://coolestguidesontheplanet.com/how-to-set-up-virtual-hosts-in-apache-on-macos-osx-sierra/


### open the following
oat /etc/apache2/extra/httpd-vhosts.conf
oat /etc/hosts
oat /etc/apache2/httpd.conf

#### /etc/apache2/extra/httpd-vhosts.conf
Note: Be sure to add &lt;Directory&gt; - otherwise permission is denied.

    <VirtualHost *:80>
        ServerName localhost
        DocumentRoot /Library/WebServer/Documents/
    </VirtualHost>


    <VirtualHost *:80>
        ServerName meatch.com
        ServerAlias www.meatch.com
        DocumentRoot "/Users/meatch/Sites/playa1"
        <Directory /Users/meatch/Sites/playa1>
            Require all granted
            Options Includes FollowSymLinks
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
        ErrorLog "/private/var/log/apache2/meatch.com-error_log"
        CustomLog "/private/var/log/apache2/meatch.com-access_log" common
        ServerAdmin meatch@me.com
    </VirtualHost>


    <VirtualHost *:80>
        ServerName dev.lamodern.com
        DocumentRoot "/Users/meatch/MeatchPod/_CLIENTS/LAMA-PortanovaElizabeth/lamodern.com-responsive2017/httpdocs"
        <Directory /Users/meatch/MeatchPod/_CLIENTS/LAMA-PortanovaElizabeth/lamodern.com-responsive2017/httpdocs>
            Require all granted
            Options Includes FollowSymLinks
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
        ErrorLog "/private/var/log/apache2/lamodern.com-error_log"
        CustomLog "/private/var/log/apache2/lamodern.com-access_log" common
        ServerAdmin meatch@me.com
    </VirtualHost>

#### /etc/hosts

    127.0.0.1	meatch.com www.meatch.com
    127.0.0.1	dev.lamodern.com



# Installing MySQL Locally - Sans MAMP

1. Download Mamp Disk Image Installer https://dev.mysql.com/downloads/mysql/
1. Run Installer
1. Copy temporary password
1. Open System preferences start MYSQL server,check to start on OSX boot.
1. Update Path in bash file to include MYSQL so you can just type MYSQL

    https://coolestguidesontheplanet.com/add-shell-path-osx/

    note: you may need to restart terminal, close and reopen. or
    source ~/.bash_profile

1. Connect to MYSQL with temp password

    mysql -h localhost -u root -p;
    temp password

1. Update password

    ALTER USER 'root'@'localhost' IDENTIFIED BY 'new-password';





