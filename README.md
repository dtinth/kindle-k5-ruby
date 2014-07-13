
Ruby on Kindle Paperwhite
=========================


Configuration
-------------

|Configuration|Value|
|-------------|-----|
|Ruby Source Code Directory|/uchi/ruby-2.1.2|
|Installation Path|/mnt/us/opt/ruby-2.1.2|
|Tarball Path|/uchi/dist/ruby-2.1.2-kindle-k5.tar.gz|
|ncurses|5.6|
|readline|5.2|



Usage
-----

    docker build -t kindle-k5-ruby .
    docker run --name kindle-k5-ruby kindle-k5-ruby true
    docker cp kindle-k5-ruby:/uchi/dist/ruby-2.1.2-kindle-k5.tar.gz .
    docker rm 

Create a folder called `opt` in your Kindle,
and copy `ruby-2.1.2-kindle-k5.tar.gz` into it.

In the terminal,

    cd /mnt/us/opt
    tar xvzf ruby-2.1.2-kindle-k5.tar.gz

Test it!

    /mnt/us/opt/ruby-2.1.2/bin/ruby -e 'puts "!DLROW OLLEH".reverse.capitalize'

How about IRB?

    /mnt/us/opt/ruby-2.1.2/bin/irb





