class NyLottoScraper::Game
  attr_accessor :name, :jackpot, :next_drawing, :

  def self.today
    #I should return a bunch of instances of Game
    puts <<-DOC.gsub /^\s*/, ''
      1. Mega Millions - $190 Million - Friday, Nov 30 - 12 24 37 42 57 18 - https://nylottery.ny.gov/mega-millions
      2. Powerball - $183 Million - Saturday, Dec 1 - 04 19 59 68 69 21 - https://nylottery.ny.gov/powerball
      3. Lotto - $4.7 Million - Saturday, Dec 1 - 02 03 21 23 35 57 17 - https://nylottery.ny.gov/lotto
    DOC

    game_1 = Game.new
    game_1.name = "Mega Millions"
    game_1.jackpot = "$190 Million"
    game_1.next_drawing = "Friday, Nov 30"
    game_1.latest_drawing = "12 24 37 42 57 18"
    game_1.url = "https://nylottery.ny.gov/mega-millions"

    game_2 = Game.new
    game_2.name = "Powerball"
    game_2.jackpot = "$183 Million"
    game_2.next_drawing = "Saturday, Dec 1"
    game_2.latest_drawing = "04 19 59 68 69 21"
    game_2.url = "https://nylottery.ny.gov/powerball"

    game_3 = Game.new
    game_3.name = "Lotto"
    game_3.jackpot = "$4.7 Million"
    game_3.next_drawing = "Saturday, Dec 1"
    game_3.latest_drawing = "02 03 21 23 35 57 17"
    game_3.url = "https://nylottery.ny.gov/lotto"

    [game_1, game_2, game_3]
  end

end
