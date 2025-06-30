#! /user/bin/ruby


require 'socket'

s0 = TCPServer.open(80)  
loop do
  sock= s0.accept
  Thread.new do
    line = sock.gets&.chomp
    # a = line.split(' ')
    # path = a[i]
    _cmd,path,_verb = line.split

    case path
      #when "/httpserver2.rb"
        #sock.puts "HTTP/1.1 200 OK"
       # sock.puts

       # file = File.open("httpserver2.rb", "r")
       # puts file.read
        #file.close
      
      when "/93"
        sock.puts "HTTP/1.1 301 OK Moved Permanently"
        sock.puts "Location: http://www.kyusan-u.ac.jp/"
        sock.puts
      when "/hello"
        sock.puts "HTTP/1.1 200 OK"
        sock.puts
        sock.puts "Hello, World!"
      else
        path = "./#{path}"
        if File.exist? path
          sock.puts "HTTP/1.1 200 OK"
          sock.puts "Content-Type: text/plain; charset=UTF-8"
          sock.puts
          pp path
          File.open path, "r" do |file|
            while fl = file.gets&. chomp
             sock.puts fl
            end
          end
          else
            sock.puts "HTTP/1.1 404 Not Found"
            sock.puts
        end
    end
    #sock.puts "HTTP/1.1 200 OK"
    #sock.puts
    #if path == "/hello"
     # sock.puts "Hello, World!"
    #else
      #sock.puts path
    #end
    sock.close  
  end
end
