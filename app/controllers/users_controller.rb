class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
  end

  private 
    def user_params

    end
end
