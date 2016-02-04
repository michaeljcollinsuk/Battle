

class Player
  attr_reader :name, :hp

  STARTING_HP = 100
  ATTACK_HP = 10

  def initialize(name, hp=STARTING_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end



end
