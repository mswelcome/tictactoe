#Testing Random Move class

require 'minitest/autorun'
require_relative 'rand.rb'

class Test_random < Minitest::Test

  def test_randmoves
    rand = Random.new
    choice = gets.chomp
