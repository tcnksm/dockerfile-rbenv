## Dorker rbenv

Prepare muliple rubies

#### Vagrant

1. `vagrant up` with [dotcloud/docker/Vagrantfile](https://github.com/dotcloud/docker/blob/master/Vagrantfile)
    - default `config.vm.synced_folder` is disabled
1. `vagrant ssh`
1. `ln -s /vagrant/Dockerfile Dockerfile`

#### Docker

1. Login `docker `
1. Add tag to image `docker tag ID base-rbenv`
1. Add tag with excuting dockerfile `docker build -t base-rbenv .`

#### Dorkerfile

- `FROM`
    - set base images
- `RUN`
    - excute command on the current image



