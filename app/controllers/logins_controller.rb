class LoginsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if !@user || !@user.authenticate(params[:password]) 
      flash[:notification] = "Could not login"
      render :new
    else
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end




end
