file = File.open"sample.txt", "r"
=begin
while line = file.gets
    line=line.chomp!
    pp line
end

#file.close

while line = file.gets
    line.chomp
end

while line = file.gets.chomp
    pp line
end

while line = file.gets&.chomp
    pp line
end
=end

File.open("sample.txt", "a") do |f|
    f.puts("Hello, world!")
end

file.close
