require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  @url = "https://uk.pinterest.com/search/pins/?q=hairstyles"
  @data = Nokogiri::HTML(open(@url))
  @pin = @data.css('.pinHolder img')
  erb :index
end
