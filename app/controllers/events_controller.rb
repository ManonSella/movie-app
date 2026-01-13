class EventsController < ApplicationController
    def index
        @events = Event.all
    end
    def show
        @event = Events.find(1)


    end
end
