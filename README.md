git-publish
=============

> `git publish`

Export docs to github pages.

Getting Started
----------

#### Install
```bash
git clone git@github.com:will-ob/git-publish.git \
   && cd git-publish \
   && sudo make install
git publish init # create .gitpublish
```

####Use
```bash
git publish
```

Options
-----------

```bash
# Command to build web dir
build_cmd="herp derp" # no command by default

# Folder to upload
# (html/images/css, not source files)
export_dir=build/ # default: ./

# Remote repository to push to
remote=origin

# Branch of remote to push to
branch=gh-pages
```


Development
----------------

This page uses [pandoc](http://johnmacfarlane.net/pandoc/) and [make](http://unixhelp.ed.ac.uk/CGI/man-cgi?make) to generate its github pages.


License
----------

The MIT License (MIT)

Copyright (c) 2014 Will O'Brien
