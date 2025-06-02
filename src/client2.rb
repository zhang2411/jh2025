#! /usr/local/bin/ruby
#

require "socket"

#host = "www-st.is.kyusan-u.ac.jp"
#host = ARGV[0]
#path = "/~toshi/"
#path = ARGV[1]

host , #path = ARGV

# # Create a TCP socket
s = TCPSocket.open(host, "http")
#code /etc/services
#s.print "GET /\r\n"
s.print ("GET" + path + " HTTP/1.1\r\n")
#s.print ("GET" #{path} HTTP/1.1\r\n")
s.print ("Host: "+ host + "\r\n")
#s.print ("Host: #{host}\r\n")
s.print ("Connection: close\r\n")
s.print ("\r\n")
while line = s.gets&.chomp
  puts line
end 
