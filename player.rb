class Player
  def initialize
    @dice = (0...5).to_a.map { Die.new }
    puts "You've created a player"
  end

  def has_dice?
    @dice.any?
  end
end
