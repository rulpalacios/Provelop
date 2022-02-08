module Maker
  class ReturnsController < ApplicationController
    def show
      event = Event.find(params[:event_id])
      event.make_changes!

      redirect_to admin_events_path, notice: 'Se solicitaron cambios de manera satisfactoria.'
    end
  end
end