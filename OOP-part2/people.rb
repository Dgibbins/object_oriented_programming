class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    return " Hey! My name is #{name}!"
  end
end

class Student < Person
  def learn                           #learn method only belongs to Student class. Can only be accessed by those belonging to it
    return "I get it!"
  end
end

class Instructor < Person
  def teach                         # teach method only exists within Instructor class. Can only be accessed by those belonging to it.
    return "Everything in Ruby is an Object"
  end
end

# Create an instance of Instructor whose name is "Chris" and call his greeting.
 instructor=Instructor.new("Chris")
 instructor.greeting
# Create an instance of Student whose name is "Cristina" and call her greeting.
student=Student.new("Cristina")
student.greeting
