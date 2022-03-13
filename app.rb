require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Birthday App'
  end

  run! if app_file == $0
end