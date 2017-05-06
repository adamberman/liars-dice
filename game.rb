require_relative "./player"

class Game
  def initialize
    @players = (0...4).to_a.map { Player.new }
    @current_player = 0
  end

  def play_round
    puts "We are playing a round"
    players_for_round = players_with_dice
    puts "The following players are in for this round: #{players_for_round}"
    # players roll
    # players bet or challenge
    # losing player loses a die
  end

  private

  def players_with_dice
    @players.select { |p| p.has_dice? }
  end
end
