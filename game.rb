require_relative "./player"

class Game
  def initialize
    @players = (0...4).to_a.map { Player.new }
    @current_player = 0
  end

  def play_round
    puts "We are playing a round"
    # eliminate players w/o dice
    # players roll
    # players bet or challenge
    # losing player loses a die
  end
end
