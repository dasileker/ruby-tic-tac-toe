# spec/player_spec.rb

require '../lib/player'

describe Player do
  let(:player1) { Player.new('', :X) }

  describe '#validate_name' do
    it 'should check for input name  of the player' do
      expect(player1.validate_name('zerradi')).to eq(true)
    end
  end
end
