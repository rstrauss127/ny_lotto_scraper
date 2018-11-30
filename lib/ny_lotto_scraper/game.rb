class NyLottoScraper::Game
  attr_accessor :name, :jackpot, :next_drawing, :latest_winners, :url

  def self.today #scrape each page and then return games based on that data
    self.scrape_games
  end

  def self.scrape_games
    games = []

    games << self.scrape_mega_millions
      #Go to mega-millions
    #extract properties
    #instantiate a game

    #go to powerball...
    games
  end

  def self.scrape_mega_millions
    doc = Nokogiri::HTML(open("https://nylottery.ny.gov/mega-millions"))
    name = doc.search("h1.header2").text
    binding.pry
  end
end
