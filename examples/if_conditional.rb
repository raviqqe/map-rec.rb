#!/usr/bin/env ruby

require 'map-rec'


conf = map_rec do
  events do
  end

  http do
    server do
      listen 443, :ssl
      server_name :localhost

      location '/' do
        set '$realm', '"Restricted"'

        if_ '$uri ~ /git-uploadpack$' do
          set '$realm', :off
        end

        auth_basic '$realm'

        root 'html'
        index 'index.html', 'index.htm'
      end
    end
  end
end

puts conf
