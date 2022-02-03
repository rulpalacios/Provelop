# frozen_string_literal: true

require 'test_helper'

class UsControllerTest < ActionDispatch::IntegrationTest
  def test_show_successful_response
    get us_path
    assert_response :success
  end
end
