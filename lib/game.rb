#!/usr/bin/env ruby
require_relative '../lib/player.rb'
class Game
  WINNING_SET = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze

  def initialize
    @player1 = Player.new('', 'X')
    @player1 = Player.new('', 'O')
    @game_arr= [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end