class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

=begin
  def info
    @name + ',' + @age.to_s
  end
end

# Example usage:
person = Person.new("Alice", 30)
puts person.info
=end
def info
    puts "#{@name}, #{@age}"
  end
end

# Example usage:
person = Person.new("Alice", 30)
puts person.info