class NyLottoScraper::Game

  def self.today
    #I should return a bunch of instances of Game
    puts <<-DOC.gsub /^\s*/, ''
      1. Mega Millions Game - $190 Million - Friday, Nov 30 - 12 24 37 42 57 18 - https://nylottery.ny.gov/mega-millions
      2. Powerball - $183 Million - Saturday, Dec 1 - 04 19 59 68 69 21 - https://nylottery.ny.gov/powerball
      3. Lotto - $4.7 Million - Saturday, Dec 1 - 02 03 21 23 35 57 17 - https://nylottery.ny.gov/lotto
    DOC
  end

end
