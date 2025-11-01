class Earth
  YEAR_IN_SECONDS = 31557600.0
  class << self

    def how_much_years(seconds)
      years(seconds)
    end

    def years(seconds)
      seconds / 31557600.0
    end
  end
end
