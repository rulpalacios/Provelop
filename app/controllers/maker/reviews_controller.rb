module Maker
  class ReviewsController < ApplicationController
    def show
      event = Event.find(params[:event_id])
      event.send_to_review!

      redirect_to maker_events_path, notice: 'El curso fue enviado a revisión'
    end
  end
end