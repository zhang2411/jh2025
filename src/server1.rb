#!/usr/bin/env ruby
#
require "socket"

def server sock
  while buf = sock.gets
      p buf  # Print the received data to the console
  end
  sock.close  # Close the socket when done
end

s0 = TCPServer.open(80)  # Listen on port 2000
sock = s0.accept  # Wait for a client to connect
server sock
s0.close  # Close the server socket when done