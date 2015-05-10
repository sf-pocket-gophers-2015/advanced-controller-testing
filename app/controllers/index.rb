require 'httparty'
require 'awesome_print'
require 'json'

get '/' do
  # headers = { "User-Agent" => "yhordi" }
  response = HTTParty.get("https://api.github.com/users/dreeve")
  ap response
  @image = response["avatar_url"]
  erb :index
end 