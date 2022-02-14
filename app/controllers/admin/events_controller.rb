module Admin
  class EventsController < ApplicationController
    def index
      @events = Event.where.not(status: 'draft')
    end
  end
end
