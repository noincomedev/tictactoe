require_relative './board'

class Game
    def start
      puts "====================="
      puts "New Game?"
      puts " 1:START"
      puts " 0:EXIT"
      puts "====================="
      puts ""
      @input = gets.chomp.to_i
      case @input
      when 1
        @board = Board.new

          while @board.playing
            @board.play
          end

      else
        @play = false
  end
    end
end