class Die
  attr_reader :value

  def initialize
    @value = Random.new.rand(1..6)
  end
end
