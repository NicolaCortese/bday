require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  post '/result' do
    $name = params[:user_name]
    day = params[:day]
    month = params[:month]
    year = params[:year]
    $bdaycalc = BdayCalc.new(day,month,year)
    redirect '/result'
  end
  get '/result' do
    
    erb()
  end

  run! if app_file == $0
end