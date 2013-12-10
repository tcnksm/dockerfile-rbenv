FROM tcnksm/rbenv
MAINTAINER tcnksm, https://github.com/tcnksm

ADD ./Gemfile /root/Gemfile

# Install bundler
RUN . /etc/profile.d/rbenvrc; for v in $(cat /root/rubies.txt); do rbenv global $v; gem install --no-rdoc --no-ri bundler; done

# Install basic rubygems by bundler
RUN . /etc/profile.d/rbenvrc; cd /root/; for v in $(cat rubies.txt); do rbenv global $v; bundle install; done
