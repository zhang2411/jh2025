#! /usr/local/bin/ruby
#
require "socket"
#
# # Create a TCP socket
s = TCPSocket.open("www.is.kyusan-u.ac.jp", 80)
#s.print "GET /\r\n"
s.print ("GET /~toshi/ HTTP/1.1\r\n")
s.print ("Host: www.is.kyusan-u.ac.jp\r\n")
s.print ("\r\n")
while line = s.gets&.chomp
  puts line
end
# apt update是更新列表
# apt是linux下的包管理工具，类似于windows下的安装程序
# pip是python的包管理工具
# 2**是OK 3**是重定向 4**是客户端错误 5**是服务器错误
# telnet 是一种远程连接协议和命令工具，可以让你用命令行连接到一台远程主机的指定端口，手动测试网络通信。
#HTTP最初是0.9
#HTTTP1.1必须家有Host头
#默认开启 Keep-Alive
#服务器会保留 TCP 连接一段时间，等待你是否还要发下一个请求
#如果你不说 “我想关闭”，它不会立即断
#
#HTTP1.0
#服务器响应完 200 OK 后，立刻关闭连接。
#
#6/2
#GET后的空格表示请求行结束
#s.print"\r\n"表示第二个回车
#
#HEAD是请求头
#HEAD请求和GET请求类似，但是服务器只返回响应头，不返回响应体
#HEAD请求可以用来获取资源的元信息，比如内容类型、长度、最后修改时间等
