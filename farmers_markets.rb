require 'http'

response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")

markets = response.parse

p markets[0]["zip"]
