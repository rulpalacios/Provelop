# frozen_string_literal: true

require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  def test_show_successful_response
    get event_path(id: 1)
    assert_response :success
  end
end
