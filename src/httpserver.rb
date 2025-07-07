#! /user/bin/ruby
#
#1.TCP
#2.HTTP

require 'socket'



s0 = TCPServer.open(80)  
  # Wait for a client to connect

loop do
  sock = s0.accept
  Thread.new do
    sock.puts  
    while line = sock.gets&.chomp
      pp line  # Print the received data to the console
      sock.puts line
      break if line.empty?  # If an empty line is received, end the loop
      #if line == ""
        #break
     #end
    end
    sock.close  # Close the socket when done
    sleep 20
  end
end



#127.0.0.0.1是自身的80番借口
#V6里：：1是 0.0.0.0.0.0.1的意思