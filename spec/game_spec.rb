# spec/game_spec.rb

require_relative '../lib/game'

describe Game do
  let(:game) { Game.new }
  let(:player1) { Player.new('', :X) }
  let(:player2) { Player.new('', :O) }
  let(:board) { board.new(player1, player2) }
  let(:mov) { Game.new }

  describe '#check_win?' do
    it 'should return true if the player wins' do
      expect(game.check_win?([1, 2, 3])).to eq(true)
    end
  end

  describe '#validate_move' do
    it 'should check for valid move or not a valid move' do
      expect(game.validate_move(0, 8)).to eq(true)
    end
  end

  describe '#compare_names' do
    it 'should returns player name' do
      expect(game.compare_names('zerradi', 'amine')).to eq(false)
    end
  end

  describe '#name_check' do
    it 'should return invalid if the players have the same name' do
      expect(game.name_check('amine')).to eq(true)
    end
  end
end
