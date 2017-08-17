class CharactersController < ApplicationController
  include HttpHelper
  
  def show
    # @character = Character.find(params[:id])


    res = SearchPlayerName(params[:displayName])
    puts res
    hashed = JSON.parse res.body
    @hash = hashed
    @displayName = hashed["Response"][0]["displayName"]
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(user_params)
    @character.save
    redirect_to @character
  end

  private

    def user_params
      params.require(:character).permit(:user_id, :scout, :handcannon, :pulse, :auto,
                                        :sniper, :fusion, :shotgun, :sidearm)
    end

end
