require_relative "./player"

class HumanPlayer < Player

  private

  def challenge_previous_bet?(previous_bet)
    puts "The previous bet what #{previous_bet[0]} #{previous_bet[1]}'s"
    puts "Would you like to challenge? y or n"
    %w(y Y yes Yes YES).include? gets.chomp
  end

  def decide_on_bet(previous_bet)
    puts "The previous bet what #{previous_bet[0]} #{previous_bet[1]}'s"
    puts "What is your bet? Type two comma-separated numbers (no spaces)"
    new_bet = gets.chomp.split(",").map(&:to_i)
    if !valid_bet?(new_bet, previous_bet)
      puts "Not a valid bet"
      new_bet = decide_on_bet(previous_bet)
    end

    new_bet
  end

  def valid_bet?(new_bet, prev_bet)
    new_bet[0] > prev_bet[0] || (new_bet[0] == prev_bet[0] && new_bet[1] > prev_bet[1])
  end
end
