class FavoritesController < ApplicationController
    def create
        @favorite = Favorite.create(user_id: params[:user_id], medium_id: params[:medium_id], fave_or_wish: params[:fave_or_wish])
        redirect_to "/users/#{params[:user_id]}"
    end
    
    def update
        @favorite = Favorite.find(params[:id])
        @favorite.update(fave_or_wish: true)
        redirect_to "/users/#{session[:user_id]}"
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        redirect_to "/users/#{session[:user_id]}"
    end


end