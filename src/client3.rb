#! /usr/local/bin/ruby
#

require "socket"

#host = "www-st.is.kyusan-u.ac.jp"
#host = ARGV[0]
#path = "/~toshi/"
#path = ARGV[1]

#host , path = ARGV
url=ARGV[0]
#url=url.slice(7,url.size())
url=url[7..]
index=url.index("/")
host=url[0,index]
path=url[index..]


# # Create a TCP socket
s = TCPSocket.open(host, "http")
#s.print ("GET" + path + " HTTP/1.1\r\n")
s.print "GET #{path} HTTP/1.1\r\n"
#s.print ("Host: "+ host + "\r\n")
s.print "Host: #{host}\r\n"
s.print ("Connection: close\r\n")
s.print ("\r\n")

#只对body部分进行处理
#遇到会¥换行符才会输出

#while line = s.gets&.chomp
#  break line ==“” #如果遇到空行就结束
#  end
 # puts line
#end 

while line = s.gets&.chomp
  break if line.empty?
end

while line = s.gets&.chomp
  puts line 
end