require './Body'

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type=type
  end
  
end
