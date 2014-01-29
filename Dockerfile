FROM phusion/passenger-full
MAINTAINER Martin Cox

ENV HOME /root
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN gem install rails --no-rdoc --no-ri
RUN echo 'root:changeme' |chpasswd
RUN rails new /home/app/temp && rm -rf /home/app/temp