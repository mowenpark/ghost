require 'byebug'
require 'set'
require_relative 'player'

class Game

  MAX_LOSS_COUNT = 5

  def initialize (*players)
    @players = players
    @fragment = ""
    @dictionary = Set.new
    File.foreach("ghost-dictionary.txt") do |line|
      @dictionary << line.chomp
    end
  end

  def play_round
    current_player.prompt
    @fragment << current_player.guess
    next_player!
    
  end

  private

  def current_player
    @players[0]
  end

  def previous_player
    @players[1]
  end

  def next_player!
  end

  def take_turn(player)
  end

  def valid_play?(string)
  end

end
