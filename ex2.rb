class Cat
  attr_reader :name, :preffered_food, :meal_time
  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time<12
       puts "Eats at {@meal_time}AM."
     else
       puts "Eats at #{@meal_time-12} PM."
    end
  end

  def meow
    puts "<meow>I'm going to pee all over your pillow while you sleep<meow>"
  end


end

foo=Cat.new('Bar', 'Iams', 12)
bar=Cat.new('Foo', 'Whiskas', 23)
