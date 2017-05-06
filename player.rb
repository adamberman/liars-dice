class Player
  def initialize
    @dice = [2, 3, 4, 5, 6]
    puts "You've created a player"
  end

  def has_dice?
    @dice.any?
  end
end
