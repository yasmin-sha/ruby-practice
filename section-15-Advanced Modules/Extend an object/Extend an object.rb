module Greeting
  def sayhello
    "hello, i am #{@name}"
  end
end
class Person
  attr_reader :name
  def initialize(name)
    @name=name
  end
end
person1=Person.new("ali")
person2=Person.new("umar")
person1.extend(Greeting)
puts person1.sayhello
