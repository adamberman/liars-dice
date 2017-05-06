class Player
  def initialize
    @dice = (0...5).to_a.map { Die.new }
    puts "You've created a player"
  end

  def has_dice?
    @dice.any?
  end

  def roll_dice
    @dice.each(&:roll)
  end

  def make_bet(previous_bet)
    if previous_bet
      :challenge
    else
      [4, 3]
    end
  end
end
