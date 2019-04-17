class LoginsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if !@user.authenticate(params[:user][:username])
      render :new_login_path
    else
      session[:user_id] = @user.id
      redirect_to user_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
