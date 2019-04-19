class MediaController < ApplicationController
    def index
        @media = Medium.where("title LIKE (?)", "%#{params[:query]}%")
    end

    def show
        @medium = Medium.find(params[:id])
    end
end
