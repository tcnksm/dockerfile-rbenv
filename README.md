## Dorker rbenv

Prepare muliple versions of ruby and install base rubygems for each version. 

## Build rbenv-images

#### Vagrant

Use [dotcloud/docker/Vagrantfile](https://github.com/dotcloud/docker/blob/master/Vagrantfile). It's easy to prepare vm envrionment installed docker. By default Sync folder is disabled. Add `config.vm.synced_folder "." "/vagrant"` to Vagrantfile.

1. `vagrant ssh`
1. `ln -s /vagrant/rbenv-image rbenv-image`

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
