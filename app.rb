require 'sinatra/base'
require_relative './lib/date'

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end


  post '/birthday' do
    @name = params[:name]    
    @birthday_input = BirthdayDate.new(params[:day], params[:month])
    @birthday = @birthday_input.birthday
    erb(:birthday)
  end

  run! if app_file == $0
end
