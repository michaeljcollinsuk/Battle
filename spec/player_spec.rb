require 'player'

describe Player do
  subject(:trump) {described_class.new("Trump")}
  subject(:corbyn) {described_class.new("Corbyn")}

  context 'When the player initializes' do
    describe '#initialize' do
      it 'receives the player name from the app controller' do
         expect(corbyn.name).to eq 'Corbyn'
      end

      it 'has 100 hit points' do
        expect(corbyn.hp).to eq Player::STARTING_HP
      end
    end
  end
  context 'When the player is attacked' do
    describe '#attack' do

      it 'deducts hp points from player' do
        expect{corbyn.attack(trump)}.to change {trump.hp}.by(-10)
      end
    end
  end
end
