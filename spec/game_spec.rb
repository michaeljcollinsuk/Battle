require 'game'

describe Game do
  let(:corbyn) { double :corbyn }
  let(:trump) { double :trump }
  subject(:game) { described_class.new(corbyn, trump) }

  describe 'initialize' do
    it 'initializes with two players' do
      expect(game.p1).to eq corbyn
      expect(game.p2).to eq trump
    end
  end

  describe "#player_1_attacks" do


    it 'attacks player 2' do
      allow(trump).to receive(:receive_damage)
      expect(trump).to receive(:receive_damage)
      game.player_1_attacks
    end
  end

  describe "#player_2_attacks" do

    it 'attacks player 1' do
      allow(corbyn).to receive(:receive_damage)
      expect(corbyn).to receive(:receive_damage)
      game.player_2_attacks
    end
  end
end
