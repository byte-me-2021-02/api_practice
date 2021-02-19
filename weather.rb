require 'http'


while true

  p "enter a city name. to exit type q"
  input_city = gets.chomp

  if input_city == "q"
    break
  end

  # p input_city

  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{input_city}&appid=#{ENV['OPEN_WEATHER_API_KEY']}&units=imperial")
  # response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")


  # name of the city
  name = response.parse["name"]

  # temperature (imperial)
  temperature = response.parse["main"]["temp"]

  # weather description
  description = response.parse["weather"][0]["description"]

  # dynamic for any city
  p "it is currently #{temperature} degrees and #{description} in #{name}"
end
# "it is currently 50 degrees and cloudy in chicago"



# make the request to the api 
# get the data back
# parse through the data to get the stuff i care about
# show a user friendly sentence

# get user input
# based on user input