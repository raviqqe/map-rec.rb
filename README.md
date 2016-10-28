# map-rec.rb

[![Gem Version](https://badge.fury.io/rb/map-rec.svg)](https://badge.fury.io/rb/map-rec)
[![Build Status](https://travis-ci.org/raviqqe/map-rec.rb.svg?branch=master)](https://travis-ci.org/raviqqe/map-rec.rb)
[![License](https://img.shields.io/badge/license-unlicense-lightgray.svg)](https://unlicense.org)

nginx.conf generator in Ruby

## Installation

```
$ gem install map-rec
```

## Usage

Code:

```
require 'map-rec'

c = map_rec do
  user :www

  http do
    server do
      listen 80
      server_name 'foo.com'
    end

    server do
      listen 443, :ssl
      server_name 'bar.com'
    end
  end
end

puts c
```

Output:

```
user www;
http {
    server {
        listen 80;
        server_name foo.com;
    }
    server {
        listen 443 ssl;
        server_name bar.com;
    }
}
```

For more complex example, see [examples](examples) directory.

## License

[The Unlicense](https://unlicense.org)
