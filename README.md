Dockerfile-rbenv [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/tcnksm/dockerfile-rbenv/blob/master/LICENCE)
====

Dockerfile to prepare image which is installed multiple versions of ruby and bundler for each versions. 

## Usage

[tcnksm/rbenv Repository | Docker Hub Registry - Repositories of Docker Images](https://registry.hub.docker.com/u/tcnksm/rbenv/)

You can use this image for your project soon. It is installed ruby 1.8.7-p371, 1.9.3-p392, 2.0.0-p353:

```
docker run -i -t tcnksm/rbenv bash -l -c 'rbenv global 2.0.0-p353; bundle ...'
```

## Build your own rbenv image

You can build your own rbenb-image with favor versions of ruby. You can define ruby verion which you want to use in `versions.txt`.

```
$ docker build -t <TAG> .
```

Dockerfile execute belows;

1. Pull base image (this time ubuntu)
1. Install packages which are needed to build ruby
1. Clone [rbenv](https://github.com/sstephenson/rbenv)
1. Clone [ruby-build](https://github.com/sstephenson/ruby-build)
1. Install multiple versions of ruby which are defined at `versions.txt`
1. Install Bundler for each version

## Reference

- [docker-plenv-vanilla](https://github.com/miyagawa/docker-plenv-vanilla)
- [Using Docker and Vagrant on Mac OS X with a Ruby on Rails application](http://blog.powpark.com/2013/11/11/using-docker-and-vagrant-on-mac-osx-for-a-ruby-on-rails-app/)

## See more

Now DockerHub has its official language stack, so you should see [ruby Repository](https://registry.hub.docker.com/_/ruby/). 

## Contribution

1. Fork ([https://github.com/tcnksm/dockerfile-rbenv/fork](https://github.com/tcnksm/dockerfile-rbenv/fork))
1. Create a feature branch
1. Commit your changes
1. Rebase your local changes against the master branch
1. Push it to your remote repository
1. Create new Pull Request

## Author

[tcnksm](https://github.com/tcnksm)
