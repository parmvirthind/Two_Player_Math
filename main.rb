require 'pry'
require './players'
require './game'
require './questions'
require './turn'

@game = Game.new

@game.run_turn