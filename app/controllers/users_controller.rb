class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params(:name, :username, :age, :email, :password, :password_confirmation))
    if @user.valid?
       @user = User.create(user_params(:name, :username, :age, :email, :password, :password_confirmation))
       session[:user_id] = @user.id
       redirect_to user_path(@user)
    else
       render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end

  def edit
    
  end




  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end


end
