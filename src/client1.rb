#! /usr/local/bin/ruby
#
require "socket"
#
# # Create a TCP socket
s = TCPSocket.open("www.is.kyusan-u.ac.jp", 80)
s.print "GET /\r\n"
#s.print "GET / HTTP/1.0\r\n"
while line = s.gets&.chomp
  puts line
end