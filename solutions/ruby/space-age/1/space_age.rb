require_relative 'earth.rb'

class SpaceAge

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    ::Earth.how_much_years(seconds)
  end
end
