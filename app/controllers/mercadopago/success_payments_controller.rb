module Mercadopago
  class SuccessPaymentsController < ApplicationController
    def show
      event = Event.find(params[:id])
      proveloper = ::User.find(params[:user_id])

      proveloper.purchases.new(
        price: event.price,
        event_id: event.id
      )
      proveloper.save
    end
  end
end
