require "byebug"

class Game

  def initialize (player1, player2)
    @fragment = ""
    debugger
    @dictionary = File.readlines("ghost-dictionary.txt")
    @dictionary.each do |word|
      word.chomp!
    end
  end

  def play_round
    while
  end

  private

  def 

end
