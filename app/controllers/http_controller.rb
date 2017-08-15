require 'httparty'

class HttpController < ApplicationController

  def index
    res = HTTParty.get(
      'https://www.bungie.net/Platform/Destiny/SearchDestinyPlayer/1/TheHereticRamza',
      verify: false,
      headers: {
        "X-API-Key" => "APIKEYHERE"
      }
    )
    puts res
    @resp = res
  end
end
