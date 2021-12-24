[![Build Status][badge-travis-image]][badge-travis-url]

Kong plugin template
====================

This repository contains a very simple Kong plugin template to get you
up and running quickly for developing your own plugins.

This template was designed to work with the
[`kong-pongo`](https://github.com/Kong/kong-pongo) and
[`kong-vagrant`](https://github.com/Kong/kong-vagrant) development environments.

Please check out those repos `README` files for usage instructions.

[badge-travis-url]: https://travis-ci.org/Kong/kong-plugin/branches
[badge-travis-image]: https://travis-ci.com/Kong/kong-plugin.svg?branch=master


# Video Walkthrough - https://www.youtube.com/watch?v=UEYrwC7WCTQ

## How to setup 

### Clone the repository 

```
git clone https://github.com/The-Anton/kong-response-time-plugin.git
```


### Setting up your development environment 

```
PATH=$PATH:~/.local/bin
mkdir -p ~/.local/bin
ln -s $(realpath kong-pongo/pongo.sh) ~/.local/bin/pongo
```


### Run pongo shell

```
pongo shell
```

### Prepare DB and start Kong service

```
kong migrations bootstrap --force
kong start
```

## Now you are good to go :)

