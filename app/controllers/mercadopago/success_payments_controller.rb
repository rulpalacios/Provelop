module Mercadopago
  class SuccessPaymentsController < ApplicationController
    # TODO: Implement Organize Interactor Here
    def show
      # Set values
      event = Event.find(params[:id])
      proveloper = ::User.find(params[:user_id])

      # Purchase event
      proveloper.purchases.new(
        price: event.price,
        event_id: event.id
      )
      proveloper.save

      # Notify
      EventMailer.purchase_event(
        proveloper.email,
        event
      ).deliver_later

    end
  end
end
