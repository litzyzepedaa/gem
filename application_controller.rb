require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
post '/Gem' do
  month=params[:month]
  @results= choose_gem(month)
  erb :results
  
end
end