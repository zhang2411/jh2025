file = File.open"sample.txt", "w"

=begin
file.print "Hello, world!"
file.write "書き込む"
file.puts "Ruby"
#puts自動改行する。writeはしない。printはしない。
#puts和print会在终端上显示。write不会。
=end

file.puts "Hello, world!"
file.puts "書き込む"
file.puts "Ruby"

file.close