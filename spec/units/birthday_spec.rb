require 'birthday'

describe BirthdayDate do
    subject(:birthday) { BirthdayDate.new( "9", "5", 2019) }
  
  it 'has instance variable day' do
    expect(birthday.day).to eq 9
  end

  it 'has instance variable month' do
    expect(birthday.month).to eq 5
  end

  it 'has instance variable year' do
    expect(birthday.year).to eq 2019
  end
end
