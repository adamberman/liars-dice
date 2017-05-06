class Die
  attr_reader :value

  def roll
    @value = Random.new.rand(1..6)
  end
end
