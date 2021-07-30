music-site
==================

A makefile wrapper and some config stuff to make it easy to use [static-web-pick](https://github.com/jimkang/static-web-pick) to update my [music site](https://jimkang.com/music/)
A home for miscellaneous archiving scripts.

Usage
------------

Create a config.mk that looks like this:

    USER = <username that call install stuff>
    SERVER = <server IP or fully qualified domain name>
    METADIR = <path to the meta files (see static-web pick docs>
    WEBDIR = <path to where the web site will go>

Create a [music-site-config.js](music-site-config.js).

Put a list of entry ids you want in your site. See [static-web-pick](https://github.com/jimkang/static-web-pick) for details.

Then, `make sync` and `make run-remote`.
