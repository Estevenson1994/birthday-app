require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    'Birthday App'
  end

end
