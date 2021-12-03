module Mercadopago
  class SuccessPaymentsController < ApplicationController
    def show
      # Assign event to proveloper
      # Redirect to my purchases
      @event = Event.find(params[:id])
    end
  end
end
