require_relative "./game"

class LiarsDice
  def LiarsDice.play_game
    puts "You're playing Liar's Dice!"
    # print instructions
    # get number of players
    game = Game.new
    game.play_round
    # declare winner
  end
end
