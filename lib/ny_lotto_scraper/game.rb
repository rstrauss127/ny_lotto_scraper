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
    games = []
    doc = Nokogiri::HTML.parse(open("https://www.lotteryusa.com/new-york/"))
    x = doc.css("table.state-results tr")
    x.shift #remove header
    #CREATE OBJECTS FROM X
        x.each do |tray| ##b is instance of  game and has a title
          b = self.new
          b.title = tray.css("div.game-title").text
          games << b
        end
  end

  def self.grab_results
    doc = Nokogiri::HTML.parse(open("https://www.lotteryusa.com/new-york/"))
    x = doc.css("table.state-results tr")

    results =[]
    x.css("ul.draw-result").each do |list|
      results << list.inner_text.strip
    end

    jackpots = []
    x.css("td.jackpot").each do |pot|
      jackpots << pot.inner_text.strip
    end

    next_drawing_date = []
    x.css("span.next-draw-date").each do |date|
       next_drawing_date << date.text
     end


    next_jackpot = []
    x.css("span.next-jackpot-amount").each do |pot|
      next_jackpot << pot.text.strip
    end
     binding.pry
  end
end
