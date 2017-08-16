require 'httparty'

class HttpController < ApplicationController

  def index
    res = HTTParty.get(
      'https://www.bungie.net/Platform/Destiny/SearchDestinyPlayer/1/TheHereticRamza',
      verify: false,
      headers: {
        "X-API-Key" => ENV['DESTINY_API_KEY']
      }
    )
    puts res
    @resp = res

    hashed = JSON.parse res.body
    @hash = hashed
    puts hashed["Response"][0]["membershipId"]
  end
end
