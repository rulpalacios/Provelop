# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @events = Event.all
  end
end
