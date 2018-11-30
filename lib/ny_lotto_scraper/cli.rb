class NyLottoScraper::CLI

  def call
    puts "Todays Lotto Info:"
    list_games
    menu
    goodbye
  end

  def list_games
    puts <<-DOC.gsub /^\s*/, ''
      1. Mega Millions Game - $190 Million - Friday, Nov 30 - 12 24 37 42 57 18 - https://nylottery.ny.gov/mega-millions
      2. Powerball - $183 Million - Saturday, Dec 1 - 04 19 59 68 69 21 - https://nylottery.ny.gov/powerball
      3. Lotto - $4.7 Million - Saturday, Dec 1 - 02 03 21 23 35 57 17 - https://nylottery.ny.gov/lotto
    DOC
  end

  def menu
    puts "Enter the number of the game you'd like more info on or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on game 1..."
      when "2"
        puts "More info on game 2..."
      when "3"
        puts "More info on game 3..."
      end
    end
  end

  def goodbye
    puts "Come back again"
  end
end
