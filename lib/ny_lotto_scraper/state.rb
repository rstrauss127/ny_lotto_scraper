class InvalidType < StandardError; end

class State
  attr_accessor :name, :url


  def initialize #create an empty area of lottogames whenevr a new state is created
    @lottogames = []
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
