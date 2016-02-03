class Player
  attr_reader :name, :hp

  HP = 100

  def initialize(name)
    @name = name
    @hp = HP
  end

  def attacked_hp
    @hp = (STARTING_HP - 10)
  end

  def attack(player)
    player.attacked_hp
  end


end
