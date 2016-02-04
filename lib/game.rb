class Game

  attr_reader :p1, :p2

  def initialize(player_1, player_2)
    @p1 = player_1
    @p2 = player_2
  end

  def player_1_attacks
    p2.receive_damage
  end

  def player_2_attacks
    p1.receive_damage
  end
end
