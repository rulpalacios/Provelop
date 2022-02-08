module Admin
  class EventsController < ApplicationController
    def index
      # @events = Event.where.not(status: 'draft')
      @events = Event.all
    end
  end
end