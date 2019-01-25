require 'sinatra/base'
require_relative './lib/birthday_calculator'
require_relative './lib/birthday'


class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end


  post '/calculator' do
    birthday = BirthdayDate.new(params[:day], params[:month])
    calculator = BirthdayCalculator.new(birthday)
    session[:calculator] = calculator.calculate_days

    redirect '/result' 
  end

  get '/result' do
    @days = session[:calculator]
    erb(:result)
  end

  run! if app_file == $0

end
