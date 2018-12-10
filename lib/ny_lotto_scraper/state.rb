class InvalidType < StandardError; end

class State
  attr_accessor :name, :url, :doc


  def initialize(state_name)
    @state = self.new
    @state.name = state_name
    @state.url = "https://www.lotteryusa.com/#{state_name}/"
    @state.doc = Nokogiri::HTML(open("https://www.lotteryusa.com/#{state_name}/"))
    @games = []
  end


  def lottogames

    @lottogames.dup.freeze
  end

  def add_lottogame(lottogame)
    if !lottogame.is_a?(LottoGame)
      raise InvalidType, "must be a LottoGame" #add title
    else
      @lottogames << lottogame
    end
  end


  def first_game_title
    self.lottogames.first.title
  end
end

class StateScraper
  attr_accessor :state, :doc

  def initialize(state_name)
    @state = self.new
    @state.name = state_name
    @doc = Nokogiri::HTML(open("https://www.lotteryusa.com/#{state_name}/"))
  end

end
