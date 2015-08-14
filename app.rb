require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  @url_hair = 'https://uk.pinterest.com/search/pins/?q=hairstyles'
  @url_kittens = 'https://uk.pinterest.com/search/pins/?q=kittens'
  @url_eyes = 'https://uk.pinterest.com/search/pins/?q=eye%20make%20up'
  @data_hair = Nokogiri::HTML(open(@url_hair))
  @data_kittens = Nokogiri::HTML(open(@url_kittens))
  @data_eyes = Nokogiri::HTML(open(@url_eyes))
  @pin_hair =  @data_hair.at_css('.pinHolder img')
  @pin_kittens = @data_kittens.at_css('.pinHolder img')
  @pin_eyes = @data_eyes.at_css('.pinHolder img')
  erb :index
end

get '/hairstyles' do
  @url = 'https://uk.pinterest.com/search/pins/?q=hairstyles'
  @data = Nokogiri::HTML(open(@url))
  @pin = @data.css('.pinHolder img')
  erb :hairstyles
end

get '/kittens' do
  @url = 'https://uk.pinterest.com/search/pins/?q=kittens'
  @data = Nokogiri::HTML(open(@url))
  @pin = @data.css('.pinHolder img')
  erb :kittens
end

get '/eyes' do
  @url = 'https://uk.pinterest.com/search/pins/?q=eye%20make%20up'
  @data = Nokogiri::HTML(open(@url))
  @pin = @data.css('.pinHolder img')
  erb :eyes
end
