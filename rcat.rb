#
#reader.rb 
File.open("reader.rb", "r") do |file|
    while line = file.gets&.chomp
        puts line
        pp line
    end
end