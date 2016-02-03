require 'player'

describe Player do
  subject(:mittens) { described_class.new('Mittens') }
  subject(:kenneth) { described_class.new('Kenneth') }

  it 'returns the player name' do
    expect(kenneth.name).to eq 'Kenneth'
  end

  describe '#hit_points' do
    it 'returns players hit points' do
      expect(kenneth.hit_points).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages the player and reduces their hit points' do
      expect(mittens).to receive(:receive_damage)
      kenneth.attack(mittens)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit points by 10' do
      expect{kenneth.receive_damage}.to change{kenneth.hit_points}.by(-10)
    end
  end

end
