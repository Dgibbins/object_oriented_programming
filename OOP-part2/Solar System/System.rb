require './Body'
require './Planet'
require './Star'
require './Moon'

class System
  attr_reader :name, :bodies
  def initialize (name,mass)
      @bodies= []
      @name = name
      @mass = mass
  end

  def add

  end

  def total_mass
    total_mass += @mass
    return total_mass
  end

end
