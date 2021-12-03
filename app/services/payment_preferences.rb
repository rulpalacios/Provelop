class PaymentPreferences < ApplicationService
  require 'mercadopago'

  def initialize(event)
    @event = event
  end

  def call
    response[:response]
  end

  private

  attr_reader :event

  def sdk
    @sdk ||= Mercadopago::SDK.new(ENV['MERCADOPAGO_TOKEN'])
  end

  def result_preferences
    @result_preferences ||= {
      items: [
        {
          id: event.id,
          title: event.name,
          unit_price: event.price,
          quantity: 1
        }
      ],
      back_urls: {
        success: "http://localhost:3000/mercadopago/success_payments/#{event.id}",
        failure: 'http://localhost:3000/mercadopago/failure',
        pending: 'http://localhost:3000/mercadopago/pendings'
      },
      auto_return: 'approved'
    }
  end

  def response
    @response ||= sdk.preference.create(result_preferences)
  end
end
