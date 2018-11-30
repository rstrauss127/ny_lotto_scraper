NY LOTTO SCRAPER

1. Plan your gem, imagine you interface
2. Start with project structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. Stub out interface
5. Start making things real
7. Discover objects.
8. Program

A command line interface for Past winning numbers for draw games from the NY LOTTO

user types - ny-lotto

Show a list of games



#puts <<-DOC.gsub /^\s*/, ''
#  1. Mega Millions - $190 Million - Friday, Nov 30 - 12 24 37 42 57 18 - https://nylottery.ny.gov/mega-millions
#  2. Powerball - $183 Million - Saturday, Dec 1 - 04 19 59 68 69 21 - https://nylottery.ny.gov/powerball
#  3. Lotto - $4.7 Million - Saturday, Dec 1 - 02 03 21 23 35 57 17 - https://nylottery.ny.gov/lotto
#DOC
a game has
  a title
  current jackpot
  next drawing
  latest winning numbers
  url
