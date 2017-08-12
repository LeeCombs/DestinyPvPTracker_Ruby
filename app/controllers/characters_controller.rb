class CharactersController < ApplicationController
  
  def show
    @character = Character.find(params[:id])
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
