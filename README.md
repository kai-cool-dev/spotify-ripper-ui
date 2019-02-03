Spotify-Ripper
==============

This is a web gui for users who want to download spotify music. Currently it is only allowed for logged in users due to piracy and stuff.

A user can enter the spotify track id to the queue. It is then ripped by a really deprecated software (https://github.com/hbashton/spotify-ripper) since 2015 or 2016.

This software is highly optimized and uses redis for caching the complete metadata. The songs are then saved on the servers harddisk and can be downloaded via webinterface.

License
-------

Spotify-Ripper is open-sourced software licensed under the New BSD License. Please read the License located in `LICENSE.md`
