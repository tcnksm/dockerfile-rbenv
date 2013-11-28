FROM base

MAINTAINER tcnksm, https://github.com/tcnksm

RUN apt-get update
RUN apt-get install -y --force-yes build-essential curl git
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev
RUN apt-get clean


RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN ./root/.rbenv/plugins/ruby-build/install.sh

ADD ./rbenvrc /etc/profile.d/rbenvrc
ADD ./rubies.txt /root/rubies.txt

RUN . /etc/profile.d/rbenvrc; export CONFIGURE_OPTS="--disable-install-doc"; xargs -L 1 rbenv install < /root/rubies.txt
