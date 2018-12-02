class NyLottoScraper::Game
  attr_accessor :name, :jackpot, :next_jackpot, :results, :url

  def self.today #scrape each page and then return games based on that data
    self.scrape_games
  end

  def self.scrape_games
    games = []
    games << self.scrape_lotto
    games
  end

  def self.scrape_lotto
    doc = Nokogiri::HTML(open("https://www.lotteryusa.com/new-york/"))

    name = doc.css("tbody").css("tr").css("div.game-title").first.text
    results = doc.css("tbody").css("tr").css("ul.draw-result").first.text
    nextjackpot = doc.css("tbody").css("tr").css("td.next-jackpot").first.text
    binding.pry
  end
end
