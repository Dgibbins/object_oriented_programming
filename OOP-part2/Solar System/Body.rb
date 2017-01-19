require 'System'

class Body < System

  attr_reader :name, :mass
  def initialize(name,mass)
    super (name,mass)
  end

end
