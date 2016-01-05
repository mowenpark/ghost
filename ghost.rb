require "byebug"
require_relative 'player'
require 'set'

class Game

  def initialize (*players)
    @players = players
    @fragment = ""
    @dictionary = Set.new
    File.foreach("ghost-dictionary.txt") do |line|
      @dictionary << line.chomp
    end
  end

  def play_round
    while
  end

  private

  def current_player
  end

  def previous_player
  end

  def next_player!
  end

  def take_turn(player)
  end

  def valid_play?(string)
  end

end
