class NyLottoScraper::CLI

  def call
    welcome#(ask for state)
    #scrape_for_games
    #list_games_menu
    #show results
    #goodbye
  end
      #for that state
    def welcome
      input = ""
      puts "What State would you like to see a list of lotto games for?"
      input = gets.strip.downcase
      scrape_for_games(input)
    end
    binding.pry
end
