#! /usr/bin/env ruby
#
url=ARGV[0]
#url=url.slice(7,url.size())
url=url[7..]
index=url.index("/")
host=url[0,index]
path=url[index..]

puts "host: #{host}"
puts "path: #{path}"