require 'httparty'

module HttpHelper
  @@base_uri = 'https://www.bungie.net/Platform/Destiny/'

  def SearchPlayerName(displayName)
    puts "SearchPlayerName: " + displayName

    full_uri = @@base_uri + 'SearchDestinyPlayer/1/' + displayName
    res = MakeGetRequest(full_uri)

    return res
  end

  private

    def MakeGetRequest(uri)
      raise "Invalid URI supplied" if uri.blank?

      return HTTParty.get(
        uri,
        verify: false,
        headers: {
          "X-API-Key" => ENV['DESTINY_API_KEY']
        }
      )
    end
end
