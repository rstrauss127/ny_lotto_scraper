class NyLottoScraper::Game
  attr_accessor :title, :draw_results, :jackpot, :draw_date, :state

  def self.scrape_games(state) #returns array of games
    #games = []
    doc = Nokogiri::HTML(open("https://www.lotteryusa.com/#{state}/"))
    x = doc.css("table.state-results tr")
    x.shift #remove header  #CREATE OBJECTS FROM X
    x.collect do |game| ##b is instance of  game and has a title
      b = self.new
      b.title = game.css("div.game-title").text
      b.draw_results = game.css("ul.draw-result").inner_text.strip.scan(/\d{1,2}/).join(" ")
      b.draw_date = game.css("time").text
      b.jackpot = game.css("td.jackpot").inner_text.strip
      b
    end.delete_if{|i| i.title == ""}#drop blank objects
    #games
  end

end
