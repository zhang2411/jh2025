puts ("Hello, World!")

a=gets.to_i
s=gets
puts a+2
puts s
#Prettu Print
pp a
pp s 

#pp是改行 /n的意思

# t = gets
# s = gets
# puts t+s 
# pp t+s

# t = gets.chomp
# s = gets.chomp
# chomp是去掉改行/n
# puts t+s 
# pp t+s
# 输出结果是"ksu\n" + "ruby\n"

# print "a?"
# a = gets.to_i
# puts a*2
# print是不换行的 pp和puts会自动换行

print "a?"
a = gets.to_i

if a >= 0
  puts "a is positive"
else
  puts "a is negative"
  puts "minus"
end

#if (a >= 0)
#  puts "a is positive"
#else
#  puts "a is negative"
#  puts "minus"
#end
#java的if语句没有打括号只会执行一行
#括号并不影响（）ruby的运行

#if 和esls在java中能直接使用elsif
if a >= 0
  puts "a is positive"
elsif a == 0
  puts "a is zero"
else
  puts "a is negative"
end


#ruby中==是可以判断字符串的内容，但是java中==是判断对象的地址
#在ruby中，==是判断内容是否相等
#在java中，==是判断对象的地址
#java中不能使用=进行判断因为两边比较的是boolean值
#在ruby中可以使用=进行判断，因为两边比较的是boolean值并且都判断为true
x = "KSU"
if x == "KSU"
  puts "Hello"
else
  puts "Hi"
end

q=5
if q == 3
  puts "Three"
end

#ruby中if的修饰词是 可以让条件式写在if前面  puts “Three” if q==3

puts "Three" if q == 3

puts "Three" if q != 3
puts "Three" unless q == 3
#后面两个意思是一样的
#unless是if的反义词