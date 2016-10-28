#!/usr/bin/env ruby

require 'map-rec'


conf = map_rec do
  events do
  end

  http do
    server do
      listen 80
      return_ 301, 'https://$host$request_uri'
    end
  end
end

puts conf
