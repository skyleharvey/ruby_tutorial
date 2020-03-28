require 'sinatra'
require 'date'

today = Date::DAYNAMES[Time.now.wday]

get '/' do
  "Hello, world! Today is #{today}!"
end
