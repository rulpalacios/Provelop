module Maker
  class PublicationsController < ApplicationController
    def show
      event = Event.find(params[:event_id])
      event.publish!

      redirect_to admin_events_path, notice: 'El curso fue publicado satisfactoriamente'
    end
  end
end
