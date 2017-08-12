class CompareController < ApplicationController
  def index
    @user1 = Character.find(params[:player1])
    @user2 = Character.find(params[:player2])
  end
end
