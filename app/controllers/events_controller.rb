# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.creator.events.new(event_params)

    if @event.save
      redirect_to events_path, notice: 'Evento registrado correctamente'
    else
      render :new, alert: 'Ocurrio algun inconveniente al crear el evento'
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :price, :learn, :requirements, :oriented)
  end
end
