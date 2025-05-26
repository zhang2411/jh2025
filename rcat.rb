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
#shebang
# #!/usr/bin/env ruby
#shebang 是一个特殊的注释行，位于脚本文件的第一行，用于指定脚本的解释器。
#它告诉操作系统使用哪个解释器来执行脚本。
#在Linux中，shebang通常以 #! 开头，后面跟着解释器的路径。
#在这个例子中，#!/usr/bin/env ruby 告诉操作系统使用 Ruby 解释器来执行脚本。
#在Linux中，文件权限是通过三个用户类别（用户、组和其他）和三种权限（读、写和执行）来定义的。
#文件权限的表示方式通常是一个十字符的字符串，其中第一个字符表示文件类型（例如，目录或普通文件），
#接下来的三个字符表示用户权限，接下来的三个字符表示组权限，最后三个字符表示其他用户权限。
#例如，drwxrwxr-x 表示这是一个目录（d），用户有读、写和执行权限（rwx），组有读、写和执行权限（rwx），其他用户有读和执行权限（r-x）。
#在这个例子中，drwxrwxr-x 表示这是一个目录（d），用户有读、写和执行权限（rwx），组有读、写和执行权限（rwx），其他用户有读和执行权限（r-x）。
#XAMPP中X是任意系统 A是Apache Web 服务器，处理网页请求
# M	MySQL（或 MariaDB）	数据库系统，用于存储数据
#P	PHP	脚本语言，用于处理动态网页逻辑
#P	Perl	另一种脚本语言（较少使用）
