class CompareController < ApplicationController
  def index
    @user1 = TestUser.find(params[:player1])
    @user2 = TestUser.find(params[:player2])
  end
end
