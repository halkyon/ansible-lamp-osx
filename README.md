# Setup a LAMP dev environment on OS X using Ansible

This is still being developed. The idea is running a single command
will install everything needed to develop a PHP framework on a fresh
OS X install using the built-in Apache and PHP with OS X. It will
also install Xcode command line tools if they're missing.

Along with that, it will also install a few commonly used apps
via `brew cask`, such as Google Chrome and VirtualBox. Maybe that
could be separated out, as it's not directly related to the
dev environment... to be determined.

The idea is you pull down this code to a newly created OS X machine
and run `/install.sh`.

Some things to be done:

 * Setup a database, maybe MariaDB
 * Install composer into /usr/local/bin
 * Set "decent" /etc/php.ini settings
 * Configure http://localhost to ~/Sites in Apache
 * Install apcu, opcache and mcrypt PHP extensions (download PHP source and compile)
 * ...probably more
