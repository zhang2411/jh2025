#def是类似python的def定义函数
#return是返回值
#ruby中没有return的写法但是可以写 return 语句
def max x,y
    if x > y
        return x
    else
        return y
    end
end
=begin
def max x,y
    if x > y
         x
    else
         y
    end
end
=end

#def要写在main之前
def evenOdd x
    if x % 2 == 0
        "even"
    else
        "odd"
    end
end

a=5
b=10
c=max(a,b)
puts c

m=10
n=evenOdd(m)
puts n

pp evenOdd(5)

