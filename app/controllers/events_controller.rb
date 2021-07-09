class EventsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @events = Event.all
        render json: @events
    end

    def show
        @event = Event.find_by(id: params[:id])
        render json: @event
    end

    def create 
        @event = Event.create(name: params[:name])
       
       
        render json: @event
    end

end
