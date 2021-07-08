class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events
    end

    def show
        @event = Event.find_by(id: params[:id])
        render json: @event
    end

    def create 
        @event = Event.create(name: params[:name], logo: params[:logo])
       
       
        render json: @event
    end

end
