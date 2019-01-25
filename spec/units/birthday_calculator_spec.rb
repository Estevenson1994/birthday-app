require 'birthday_calculator.rb'
require 'date'

describe BirthdayCalculator do
  subject(:calculator) { BirthdayCalculator.new(birthday, Date.new(2019, 1, 1)) }
  let(:birthday) { double :birthday, year: 2019, day: 9, month: 5 }
  
  it 'calculates number of days till birthday' do
    expect(calculator.calculate_days).to eq 128
  end
end
