class PaperBoy

attr_accessor :name, :experience
attr_reader :earnings
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0

  end

  def quota
    0.5*@experience+50
  end

  def deliver(start_address, end_address)
    papers_delivered = (end_address-start_address)+1
    if papers_delivered >= quota
      day_wage = (quota)*0.25 + 0.5*(papers_delivered-quota)
    else
      day_wage = 0.25*papers_delivered - 2
    end


    @experience=+papers_delivered
    @earnings+=day_wage
    day_wage
  end

  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end

tommy=PaperBoy.new("Tommy")
