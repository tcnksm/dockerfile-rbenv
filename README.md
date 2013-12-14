## Dorker rbenv

Prepare image which is installed muliple versions of ruby and install base rubygems for each version.

## Build rbenv image

Install multiple versions of ruby by [rbenv](https://github.com/sstephenson/rbenv)

#### OS X

Use Vagrant for VM running docker. Vagrant 1.4 has a Docker provisioner.

1. `vagrant up`
1. `vagrant ssh`
1. `cd /vagrant`

#### Build image

```
docker build -t rbenv rbenv-image/
```

1. Pull base image (this time ubuntu)
1. Install packages which are needed to build ruby
1. Clone [rbenv]()
1. Clone [ruby-build]()
1. Install rubies which are defined at `rbenv-image/rubies.txt`
    - You can modify `rubies.txt`
    
## Build rbenv-with-rubygems

#### Vagrant

```
ln -s /vagrant/rbenv-with-rubygems-image rbenv-image
```

#### Build image

```
docker build -t rbenv-rubygems rbenv-with-rubygems-image
```

1. Pull rbenv-image (Created above)
1. Install bundler
1. Install rubygems which are defined in `Gemfile`
    - You can modify `Gemfile`　

#### Reference

- [docker-plenv-vanilla](https://github.com/miyagawa/docker-plenv-vanilla)
- [Dockerを使ってJenkinsのジョブごとにテスト実行環境を分離する - orangain flavor](http://orangain.hatenablog.com/entry/jenkins-docker)
