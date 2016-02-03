require 'player'

describe Player do
  let(:app) {double :app}
  let(:player2) {double :player2}
  before do
    allow(app).to receive(:player_one_name) {'Don Strumpet'}
  end

  subject(:player1) {described_class.new(app.player_one_name)}

  context 'When the player initializes' do
    describe '#initialize' do
      it 'receives the player name from the app controller' do
         expect(player1.name).to eq 'Don Strumpet'
      end

      it 'has 100 hit points' do
        expect(player1.hp).to eq Player::HP
      end
    end
  end
  context 'When the player is attacked' do
    describe '#attack' do

      it 'deducts hp points from player' do
        allow(player2).to receive(:attacked_hp).and_return(90)
        allow(player2).to receive(:hp).and_return(90)
        expect(player1.attack(player2)).to eq player2.hp
      end
    end
  end
end
