# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @event = Event.first
  end
end
