require 'date'

class BirthdayDate
  attr_reader :month, :day, :year

  def initialize(day, month, year = Date.today.year)
    @day = day.to_i
    @month = month.to_i
    @year = year
  end

end

