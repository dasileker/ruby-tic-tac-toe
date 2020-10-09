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
    it 'should return invalide if the players  if its empty' do
      expect(game.compare_names('', '')).to eq(true)
    end
  end

  describe '#name_check' do
    it 'should return valid if the players name' do
      expect(game.name_check('amine')).to eq(true)
    end
    it 'should return true if the players have the same names' do
      expect(game.compare_names("zerradi", "zerradi")).to eq(true)
    end
    it 'should return false if the players have not the same names' do
      expect(game.compare_names("zerradi", "mario")).to eq(false)
    end
  end
end
