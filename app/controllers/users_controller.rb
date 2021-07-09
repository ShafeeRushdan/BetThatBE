class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def create 
        @user = User.create(name: params[:name] )
       
       
        render json: @user
    end


end
