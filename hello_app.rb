require 'sinatra'
require "./day.rb"

get '/' do
  greeting(Time.now)
end
