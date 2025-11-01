=begin
Write your code for the 'Meetup' exercise in this file. Make the tests in
`meetup_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/meetup` directory.
=end

require 'date'

class Meetup
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
    @date = Date.new(year, month)
  end

  def day(wday, where)
    send(:"#{where}", wday)
  end

  def first(wday)
    first_wday = date

    until first_wday.send("#{wday}?") do
      first_wday = first_wday.next
    end

    first_wday
  end

  def second(wday)
    first(wday) + 7
  end

  def third(wday)
    second(wday) + 7
  end

  def fourth(wday)
    third(wday) + 7
  end

  def teenth(wday)
    teenth_wday = date + 12

    until teenth_wday.send("#{wday}?") do
      teenth_wday = teenth_wday.next
    end

    teenth_wday
  end

  def last(wday)
    last_wday = date.next_month - 1

    until last_wday.send("#{wday}?") do
      last_wday = last_wday.prev_day
    end

    last_wday
  end

  def date
    @date ||= Date.new(year, month)
  end
end
