class WagersController < ApplicationController
    def index
        @wager = Wager.all
        render json: @wager
    end

    def show
        @wager = Wager.find_by(id: params[:id])
        render json: @wager
    end

    def create 
        @wager = Wager.create(user_id: params[:user_id], event_id: params[:event_id], amount: params[:amount])
       
       
        render json: @wager
    end


end
