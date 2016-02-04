

class Player
  attr_reader :name, :hp

  STARTING_HP = 100
  ATTACK_HP = 10

  def initialize(name, hp=STARTING_HP)
    @name = name
    @hp = hp
  end

  def attacked_hp
    @hp -= 10
  end

  def attack(player)
    player.attacked_hp
  end


end
