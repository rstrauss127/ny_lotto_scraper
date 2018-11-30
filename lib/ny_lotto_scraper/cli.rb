class NyLottoScraper::CLI

  def call

    list_games
    menu
    goodbye
  end

  def list_games
    puts "Todays Lotto Info:"
    @games = NyLottoScraper::Game.today
  end

  def menu

    input = nil
    while input != "exit"
      puts "Enter the number of the game you'd like to see winning numbers for, or type list, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on game 1..."
      when "2"
        puts "More info on game 2..."
      when "3"
        puts "More info on game 3..."
      when "list"
        list_games
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "Come back again"
  end
end
