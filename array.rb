a=[10, 20 , 30, 40, 50]

#aの要数を全て表示
a.each do |i|
    pp i
end

#java
#for (int i=0; i<a.length; i++){
#    System.out.println(a[i]);
#}
#ruby
for i in 0..a.length do
    puts a[i]
end
#ruby中没有for语句的写法但是可以写 for i in a
#类似java中遍历for（变量：数组）

#java
#int i=0;
#while (i<a.length){
#    System.out.println(a[i]);
#    i++;
#}
#ruby
i=0
while i<a.length do
    puts a[i]
    i+=1
end

#java
#for(int i :a){
#    System.out.println(i);
#}
#ruby
for i in a do
    puts i
end
#a.each do |i|
#    puts i+1
#end
##上面和下面的区别是
#上面是将a的每个元素加1
#下面是将a的每个元素作为i去读出来
#输出的会是11.21.31.41.51
#a.each do |i|的区别是a.each已经是作为date去读出来了

#aの最初の要素が偶数たったら。aから取り除く
#aのすべての要素を表示
if a[0] % 2 == 0
    #a.delete_at(0)
    a.shift
    #a.shift是删除第一个元素
    #a.delete_at(0)是删除第一个元素。0能换成别的数字表示第几位
    #shift的反义是push把元素添加到最后
    #pop的反义是push
    #pop是删除最后一个元素
end
a.each do |i|
    puts i
end
#a.shift if a[0] % 2 == 0
#a.each do |i| puts i end
#也是能够运行的
