#
#reader.rb 画面１行づつ表示
=begin
File.open("reader.rb", "r") do |file|
    while line = file.gets&.chomp
        puts line
        #pp line
    end
end
#file.close
#这个是关闭文件前面没有file的话不需要
=end

#file = File.open("reader.rb", "r")
#while a
#使用command line将文件内容一行行表示
#ruby racat.rb a.txt b.txt c.rb
File.open ARGV[0], "r" do |file|
    
    while line = file.gets&.chomp
        puts line
    end
end
