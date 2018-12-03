class NyLottoScraper::Game
  attr_accessor :title, :draw_results, :url, :next_jackpot

  def self.today #scrape each page and then return games based on that data
    self.scrape_games
  end

  def self.scrape_games
    games = []
    games << self.scrape_lotto
    games
  end

  def self.scrape_lotto
    doc = Nokogiri::HTML.parse(open("https://www.lotteryusa.com/new-york/"))

    game = self.new
    game.title = doc.css("tbody").css("tr").css("div.game-title").first.text
    game.draw_results = doc.css("tbody").css("tr").css("ul.draw-result").first.text
    game.next_jackpot = doc.css("tbody").css("tr").css("td.next-jackpot").first.text
    game.url = "https://www.lotteryusa.com/new-york/lotto/year"
    game

  end


  def self.scrape_games
        doc = Nokogiri::HTML.parse(open("https://www.lotteryusa.com/new-york/"))
    x = doc.css("table.state-results tr")
    x.shift #remove header
    #CREATE OBJECTS FROM X
    binding.pry

        x.each do |tray| ##b is instance of  game and has a title 
          b = self.new
          b.title = tray.css("div.game-title").text
        end
  end

end
