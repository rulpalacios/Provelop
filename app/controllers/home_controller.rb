# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @events = Event.published
  end
end
