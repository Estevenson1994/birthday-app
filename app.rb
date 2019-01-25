require 'sinatra/base'
require_relative './lib/birthday'

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end


  post '/birthday' do
    @name = params[:name]    
    p params[:name]
    p params[:day]
    p params[:month]
    @birthday_input = BirthdayDate.new(params[:day], params[:month])
    @birthday = @birthday_input.birthday
    erb(:birthday)
  end

  run! if app_file == $0
end
