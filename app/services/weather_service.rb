require 'net/http'

class WeatherService
  def self.get(city)
    {
      temperature: 25,
      description: "it is cloudy",
      city: city
    }
  end
end
