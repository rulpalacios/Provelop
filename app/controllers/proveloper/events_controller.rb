module Proveloper
  class EventsController < ApplicationController
    def index
      @events = Event.where(id: current_user.purchases.pluck(:event_id))
    end
  end
end