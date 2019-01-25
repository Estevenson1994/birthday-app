require 'date'

class BirthdayCalculator
  attr_reader :today, :birthday
  def initialize(birthday, today = Date.today)
    @today = today
    @birthday = birthday
  end

  def birthday_date
    Date.new(@birthday.year, @birthday.month, @birthday.day)
  end

  def calculate_days
    if @today < birthday_date
      (birthday_date - @today).to_i
    else
      (birthday_date - @today + 365).to_i
    end
  end
end


