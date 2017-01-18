class Player

  def initialize
    @gold_coins= 0
    @health_points= 10
    @lives= 5
    @score= 0
  end

  def do_battle
    return @health_points-=1
    if @health_points <=0
      (@lives=@lives-1) && (@health_points=10)
      if @lives<0
       restart
      end
    end
  end

  def restart
    initialize
    return "Player Restarted, Get good kid!"
  end

  def level_up
    @lives+=1
  end

  def collect_treasure(num_gold)
    @gold_coins+=(num_gold)

    if @gold_coins>=10  #if gold coins reaches multiple of 10, add score as multiple of 10.
       @score+=(num_gold/10)
       @gold_coins=@gold_coins-num_gold
    end
      if @score>=10   #if score reaches 10 run level_up method
        y=(@score/10)
        y.times{ level_up }
      end
  end

end
