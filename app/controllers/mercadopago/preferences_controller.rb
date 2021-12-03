require 'mercadopago'

module MercadoPago
  class PreferencesController < ApplicationController
    def create
      preference_data = {
        items: [
          {
            id: 1
            title: 'Mi producto',
            unit_price: 10,
            quantity: 1
          }
        ],
        back_urls = {
          success: 'http://localhost:3000/mercadopago/success'
          failure: 'http://localhost:3000/mercadopago/failure',
          pending: 'http://localhost:3000/mercadopago/pendings'
        },
        auto_return: 'approved'
      }
      preference_response = sdk.preference.create(preference_data)

      respond_to do |format|
        format.json { render json: preference_response[:response] }
      end
    end

    private

    def sdk
      @sdk ||= Mercadopago::SDK.new('TEST-ba454fbd-75b0-4ef2-9510-1340a5c2d9bd')
    end
  end
end