require 'date'
class BirthdayDate
attr_reader :month, :day
  def initialize(day, month)
    @day = day.to_i
    @month = month
  end

  def today
    Time.now.to_date
  end

  def birthday_month
  months = {:January => 1, 
	    :February => 2, 
            :March => 3,
            :April => 4, 
            :May => 5, 
            :June => 6, 
            :July => 7, 
            :August => 8,
            :September => 9,
            :October => 10,
            :November => 11, 
            :December => 12
          }
  months[@month.to_sym]
  end 

  def birthday
    year = Time.now.year
    month = birthday_month
    Date.new(year, month, @day)
  end
end

