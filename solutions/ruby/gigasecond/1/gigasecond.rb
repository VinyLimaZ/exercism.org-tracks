class Gigasecond
  GIGASECOND = 1_000_000_000 #ONBILLIUN
  def self.from(time_utc)
    time_utc + GIGASECOND
  end
end
