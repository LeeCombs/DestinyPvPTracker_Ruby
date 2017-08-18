class CharactersController < ApplicationController
  include HttpHelper
  
  def show

    # Make the http requets to get player information
    res = SearchPlayerName(params[:displayName])
    resBody = JSON.parse res.body

    puts 'spn res'
    puts res
    if res['Response'].blank?
      return
    end
    puts 'res body'
    puts resBody

    # Grab or create the player's record
    @player = DestinyPlayer.find_by membership_id: resBody["Response"][0]["membershipId"]
    if @player.nil?
      puts 'Creating player record for: ' + params[:displayName]
      @player = DestinyPlayer.new
      @player.membership_id   = resBody["Response"][0]["membershipId"]
      @player.membership_type = resBody["Response"][0]["membershipType"]
      @player.display_name    = resBody["Response"][0]["displayName"]
      @player.icon_path       = resBody["Response"][0]["iconPath"]
      @player.save
    end

  end

  def new
    @player = DestinyPlayer.new
  end

  def create
    @player = DestinyPlayer.new(user_params)
    @player.save
    puts "player saved"
    redirect_to @player
  end

  private

    def user_params
      params.require(:player).permit(:membership_id, :membership_type, :icon_path, :display_name)
    end

end
