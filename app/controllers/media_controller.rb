class MediaController < ApplicationController
    def index
        @media = Media.where("title LIKE (?)", "%#{params[:query]}%")
    end

    def show
        @medium = Media.find(params[:id])
    end
end
