require 'byebug'
require 'set'
require_relative 'player'

class Game

  MAX_LOSS_COUNT = 5

  # initializing with just the names of the players, instead of Player.new classes
  def initialize (*players)
    @players = players.map { |name| Player.new(name)}
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

  def current_player
    @players[0]
  end

  def previous_player
    @players[-1]
  end

  def next_player!
    @players.rotate!

    @players.rotate! until current_player.losses != 0
  end

  def take_turn(player)


  end

  def valid_play?(string)
    return false unless string.is_a?(String) && string.length == 1
    new_fragment = @fragment + string
    new_dictionary = @dictionary.select { |word| word.start_with?(new_fragment) }
    return false if new_dictionary == []

    true
  end

end
