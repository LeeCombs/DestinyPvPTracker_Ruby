class TestUsersController < ApplicationController
  
  def show
    @testuser = TestUser.find(params[:id])
  end

  def new
    @testuser = TestUser.new
  end

  def create
    @testuser = TestUser.new(user_params)
    @testuser.save
    redirect_to @testuser
  end

  private

    def user_params
      params.require(:testuser).permit(:user_id, :scout, :handcannon, :pulse, :auto)
    end

end
