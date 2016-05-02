class Movie

  def initialize
    # puts Rainbow('Movie was instantiated, bro.').cyan
    @props = HTTParty.get('http://www.omdbapi.com/?t=Top+Gun&y=&plot=short&r=json')
    # puts Rainbow(@props).fuchsia
  end

  def to_hash
    @props.to_hash
  end

end
