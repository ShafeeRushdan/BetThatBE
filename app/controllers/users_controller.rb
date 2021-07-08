class UsersController < ApplicationController
    
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def create 
        @user = User.create(name: params[:name], avi: params[:avi], post: params[:post] )
       
       
        render json: @user
    end

   
     
       
       
  


end