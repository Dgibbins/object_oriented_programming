require './Body.rb'
class System
  attr_reader :bodies

  def initialize
      @bodies= []
  end

  def add(body)
    @bodies<<body
  end

  def total_mass
    total=0
    @bodies.each do |body|
      total+= body.mass
    end
    return total
  end

end

#Input
# Sol_system=System.new
# m=Moon.new("Mona",7.34e+22 ,29,"Earth")
# s=Star.new("Sol", 1.98e+30, "G2V")
# p=Planet.new("Earth", 5.97e+24, 365, 2017)
# Sol_system.add(m)
# Sol_system.add(s)
# Sol_system.add(p)
# Sol_system.total_mass
