a=5
while a>0
  puts a
  a -= 1
end
#ruby中while语句的格式是while 条件 do
#java中while语句的格式是while (条件) {
#rub中没有a--的写法但是可以写 a-=1或者a=a-1

ia=[10,20,30,40,50]
ia.each do |i|
  puts i
end

for i in ia
  puts i
end
#ruby中没有for语句的写法但是可以写 for i in ia
#类似java中遍历for（变量：数组）

15.times do
  print "*"
end
#相当于打印15个*
#print是打印不换行
#puts是打印换行