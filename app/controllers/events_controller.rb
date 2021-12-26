# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @preferences = PaymentPreferences.call(@event, current_user)
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

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])

    authorize @event

    if @event.update(event_params)
      redirect_to event_path(@event), notice: 'Evento actualizado correctamente'
    else
      render :edit, alert: 'Ocurrio algun inconveniente al editar el evento'
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name, :description, :image, :price, :learn, :requirements, :modality, :event_type, :specialization, oriented: [],
      sessions_attributes: %i[_destroy id date],
      expected_learnings_attributes: %i[_destroy id learning],
      requirements_attributes: %i[_destroy id requirement],
      learning_modules_attributes: [:_destroy, :id, :name, { module_contents_attributes: %i[_destroy id content] }]
    )
  end
end
