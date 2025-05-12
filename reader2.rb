path = ARGV[0]
File.open path, "r" do |file|
=begin
    while line = file.gets&.chomp
        puts line
        pp line
    end
=end
#pp输出会带双引号
    
    number = 1
    while line = file.gets&.chomp
        puts "#{number} #{line}"
        number += 1
    end
end