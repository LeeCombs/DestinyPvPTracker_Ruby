class CharactersController < ApplicationController
  include HttpHelper
  
  def show
    # @character = Character.find(params[:id])

    res = SearchPlayerName(params[:displayName])
    puts res
    hashed = JSON.parse res.body
    @hash = hashed
    @displayName = hashed["Response"][0]["displayName"]

    @player = DestinyPlayer.find_by membership_id: hashed["Response"][0]["membershipId"]

    if @player.nil?
      puts 'Creating player...'
      @player = DestinyPlayer.new
      @player.membership_id = hashed["Response"][0]["membershipId"]
      @player.membership_type = hashed["Response"][0]["membershipType"]
      @player.display_name = hashed["Response"][0]["displayName"]
      @player.icon_path = hashed["Response"][0]["iconPath"]
      @player.save
    else
      puts 'Player found'
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
