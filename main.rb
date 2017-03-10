require 'sinatra'
require 'sinatra/json'

set :server, :puma
set :environment, :production
set :port, 8888

get '/' do
  headers 'Access-Control-Allow-Origin' => '*'
  json a: 1
end
