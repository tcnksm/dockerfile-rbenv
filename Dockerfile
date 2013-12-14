FROM base

MAINTAINER tcnksm "https://github.com/tcnksm"

# Install packages for building ruby
RUN apt-get update
RUN apt-get install -y --force-yes build-essential curl git
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev
RUN apt-get clean

# Install rbenv and ruby-build
RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN ./root/.rbenv/plugins/ruby-build/install.sh

# Add settings for rbenv
RUN echo 'export PATH="/root/.rbenv/bin:$PATH"' >> /etc/bash.bashrc
RUN echo 'eval "$(rbenv init -)"' >> /etc/bash.bashrc

# Install multiple versions of ruby
ADD ./versions.txt /root/versions.txt
ENV CONFIGURE_OPTS --disable-install-doc
RUN /bin/bash -l -c 'xargs -L 1 rbenv install < /root/rubies.txt'

# Install Bundler for each version of ruby
RUN /bin/bash -l -c 'for v in $(cat /root/rubies.txt); do rbenv global $v; gem install --no-rdoc --no-ri bundler; done'

# Set defaults for excuting container
CMD /bin/bash
