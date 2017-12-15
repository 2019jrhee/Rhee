class WeatherController < ApplicationController
  require 'net/http'
  def ask
  end

  def show
  	@place = params[:place]

    weather = "http://api.openweathermap.org/data/2.5/weather?zip=#{@place},us&units=imperial&APPID=419bba60a45fcf7003285bcbe32e7ddd"

weather = "http://api.openweathermap.org/data/2.5/weather?zip=10128,us&units=imperial&APPID=419bba60a45fcf7003285bcbe32e7ddd"
    #for the daily

    #"http://api.openweathermap.org/data/2.5/weather?zip=#{@zip},us&APPID=1e47824e749b3d8dadb0796c8a160b94"
    @weather_call = Net::HTTP.get(URI(weather))
    @parse_weather_call = JSON.parse @weather_call
   

  end
end
