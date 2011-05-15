require 'sinatra'
require_relative 'gymmath'
require 'haml'

get '/' do
    haml :index
end

get '/calc' do
    bar = params[:bar]
    target = params[:target]
  
    math = GymMath.new()
    @plates = math.calc_plates_needed(target.to_i, bar.to_i)
    haml :index
end