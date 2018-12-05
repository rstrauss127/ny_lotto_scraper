class NyLottoScraper::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "New York Lottery Games:"
    @games = NyLottoScraper::Game.scrape_games
    @games.each.with_index(1) do |game, i|
      puts "#{i}. #{game.title}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the game you'd like to see the latest winning numbers and jackpot for."
      puts "To view the list of games again, type 'list'. If you are finished, type 'exit'"
      input = gets.strip.downcase

      if input.to_i > 0
        the_game = @games[input.to_i-1]
        puts "Winning Numbers for #{the_game.title}, Date Drawn: #{the_game.draw_date}"
        puts "#{the_game.draw_results}"
        puts "Jackpot: #{the_game.jackpot}"

      elsif input == "list"
        list_games
      elsif input != "exit" #idk why i need this
        puts "Not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "Come back again"
  end
end
