Installation
============

Hey, this document will guide you through the installation process of this software.

FOR THIS GUIDE WE ASSUME YOU ARE USING LINUX DEBIAN FOR THE THIRD PARTY SOFTWARE PLEASE GO TO THE SOURCE LINKS FOR OTHER DISTRIBUTIONS

WE ASSUME YOU HAVE A RUNNING MYSQL SERVER

Install the Daemon
------------------

For the daemon you need a old *binary* appkey from the spotify developer console (They don't issue them since 2015: https://developer.spotify.com/technologies/libspotify/application-keys/ ). Spotify just don't want us to use this anymore, but it's working.

Install the dependencies/encoders:

```bash
apt install -y flac libav-tools faac libfdk-aac-dev automake autoconf vorbis-tool sopus-tools lame build-essential libffi-dev
wget https://github.com/nu774/fdkaac/archive/v0.6.2.tar.gz
tar xvf v0.6.2.tar.gz
cd fdkaac-0.6.2
autoreconf -i
./configure
make install
```

Install PySpotify and deprecated libspotify:

```bash
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/stretch.list
apt update -y
apt install -y python-spotify libspotify-dev
```

Install Mutagen and Colorama:

```bash
pip install colorama mutagen
```

Install Ripper-Daemon:

```bash
cd daemon/
python setup.py install
# TODO: Crontab Installation of Wrapper Script
```

Install the Web GUI
-------------------

To run this application on your machine, you need at least:

> > = PHP 7.2 - >= Phalcon 3.0 - Apache Web Server with `mod_rewrite enabled`, and `AllowOverride Options` (or `All`) in your `httpd.conf` or Nginx Web Server - Latest [Phalcon Framework](https://github.com/phalcon/cphalcon) extension installed/enabled - MySQL >= 5.7 or MariaDB >= 10.0

### Installing DNS Database Schema

You need to initialize the database with the correct schema. This schema also includes a user with following credentials `admin@example.dns - admin1234` to administrate everything.

```bash
echo 'CREATE DATABASE spotify' | mysql -u root
cat schemas/import.sql | mysql -u root spotify
```

### Configure the software

Please edit now your configuration file located in `app/config/config.php`. Change the MySQL server and mailserver details.

### Installing Dependencies via Composer

Spotify-Ripper dependencies must be installed using Composer. Install composer in a common location or in your project:

```bash
curl -s http://getcomposer.org/installer | php
```

Run the composer installer:

```bash
php composer.phar install
```

**NOTE** After the installation, please ensure that the following folders have write permissions set: - `cache`
