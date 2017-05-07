require_relative "./human_player"

class Game
  def initialize
    @players = (0...4).to_a.map { HumanPlayer.new }
  end

  def play_round
    puts "We are playing a round"
    players_for_round = players_with_dice
    puts "The following players are in for this round: #{players_for_round}"
    players_for_round.each(&:roll_dice)
    losing_player = play_round_of_betting(players_for_round)
    losing_player.remove_die
  end

  private

  def players_with_dice
    @players.select { |p| p.has_dice? }
  end

  def play_round_of_betting(players)
    current_player = 0
    current_bet = players[current_player].make_bet
    while current_bet != :challenge do
      current_player = (current_player + 1) % players.length
      previous_bet = current_bet
      current_bet = players[current_player].make_bet(previous_bet)
    end

    if challenge_successful?(players, previous_bet)
      players[(current_player - 1) % players.length]
    else
      players[current_player]
    end
  end

  def challenge_successful?(players, previous_bet)
    bet_num_dice, dice_value = previous_bet
    actual_num_dice = players.reduce(0) { |sum, p| sum + p.num_dice(dice_value) }
    bet_num_dice > actual_num_dice
  end
end
