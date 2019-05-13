require "./board"
class Game
  attr_accessor :play
  include Board
  def initialize
    show_rules
    @play = true
  end

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
      puts "INPUT"
    else
      @play = false
    end
  end

  def show_rules
    puts "======================================="
    puts "======== Welcome to TicTacToe! ========"
    puts "======================================="
    puts ""
    puts "======== RULES ========"
    puts ""
    puts "Two players take turns placing a mark on a 3x3 grid"
    puts "Which ever gets three marks lined up first wins!"
    puts "If there are no more room to place marks"
    puts "then it's a draw! The grids are numbered"
    puts "1-9 from top to bottom."
    puts ""
    puts "Good luck, and have fun! :)"
    puts ""
  end
end