require_relative "./player"

class ComputerPlayer < Player
  
  private

  def challenge_previous_bet?(previous_bet)
    unknown_dice = @game.total_dice_left - self.num_dice
    known_dice = self.num_dice(previous_bet[1])
    necessary = previous_bet[0] - known_dice
    necessary > (unknown_dice / 6)
  end

  def decide_on_bet(previous_bet)
  end
end
