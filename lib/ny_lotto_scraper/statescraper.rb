class StateScraper
  attr_accessor :state, :doc

  def initialize(state_name)
    @state = State.new
    @state.name = state_name
    @doc = Nokogiri::HTML(open("https://www.lotteryusa.com/#{state_name}/"))
  end

end
