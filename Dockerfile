
FROM dtinth/kindle-k5-toolchain

# download and extract ruby
RUN cd /uchi && wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz && tar xvzf ruby-2.1.2.tar.gz
RUN mkdir /uchi/dist

# compile for build machine
WORKDIR /uchi/ruby-2.1.2
RUN ./configure --disable-install-doc && make
USER root
RUN make install
USER crosstool

# compile for kindle
ADD kindle_ruby_configure.sh /kindle_ruby_configure.sh
RUN make clean
RUN bash /kindle_ruby_configure.sh /mnt/us/opt/ruby-2.1.2 && make
USER root
RUN make install
RUN cd /mnt/us/opt && tar cvzf /uchi/dist/ruby-2.1.2-kindle-k5.tar.gz ruby-2.1.2


