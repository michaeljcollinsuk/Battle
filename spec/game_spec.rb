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

  describe "#player_one_attacks" do


    it 'attacks player 2' do
      expect(trump).to receive(:receive_damage)
      game.player_one_attacks
    end
  end

  describe "#player_two_attacks" do

    it 'attacks player 1' do
      expect(corbyn).to receive(:receive_damage)
      game.player_two_attacks
    end
  end
end
