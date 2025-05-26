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

ARGV.each do |arg|
    File.open arg, "r" do |file|

    while line = file.gets&.chomp
        puts line
    end
end

end

#ruby racat.rb a.txt b.txt c.rb表述显示的文件是那个
File.open ARGV[0], "r" do |file|

    while line = file.gets&.chomp
        puts line
    end
end

#drwxrwxrxw
# User Group Other
#r	read = 可读
#w	write = 可写
#x	execute = 可执行（或目录可进入）
#-	没有该权限