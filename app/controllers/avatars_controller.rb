class AvatarsController < ApplicationController
  def update
    @user = User.find(params[:user_id])
    @user.picture.attach(params[:picture])
    redirect_to(user_path(@user)) 
  end
end
