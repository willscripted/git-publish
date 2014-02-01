git-publish
=============

> `git publish`

Export docs to gh-pages.

Getting Started
----------

#### Install
```bash
git clone git@github.com:will-ob/git-publish.git && cd git-publish && sudo make install
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
build_cmd=$(herp derp) # no command by default

# Root of web directory
export_dir=docs/ # default: ./

# Remote repository to push to
remote=origin

# Branch of remote to push to
branch=gh-pages
```

License
----------

The MIT License (MIT)

Copyright (c) 2014 Will O'Brien
