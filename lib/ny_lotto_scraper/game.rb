class NyLottoScraper::Game
  attr_accessor :name, :jackpot, :next_drawing, :latest_winners, :url

  def self.today #scrape each page and then return games based on that data
    self.scrape_games
  end

  def self.scrape_games
    games = []
    #go to https://nylottery.ny.gov/ find the game
      #Go to mega-millions
    #extract properties
    #instantiate a game

    #go to powerball...
    games
  end

end
