#!/usr/bin/env ruby
#
require "socket"

def server sock
  while buf = sock.gets
      p buf  # Print the received data to the console
      sock.puts "reply:#{buf}" # Echo the received data back to the client
  end
  sock.close  # Close the socket when done
end

s0 = TCPServer.open(80)  # Listen on port 2000
while true
  sock = s0.accept  # Wait for a client to connect
  Thread.new do
    server sock
  end
end

s0.close  # Close the server socket when done