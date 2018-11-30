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

      if input.to_i > 0
        puts @games[input.to_i-1]
      elsif input == "list"
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
