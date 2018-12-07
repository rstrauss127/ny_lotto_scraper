s_nm = LottoScraper.new("new-mexico").scrape #=> <LottoGames for new-mexico>

  EXPECT s_nm.lottogames.first.title #=> Midday Pick 3

1. We need a LottoGameScraper class
2. That class needs to instatiate the list_of_games for that state(new-mexico)
3. We need to scrape the details of that state
4. We need to scrape the individual games for that state and add them to that instance
