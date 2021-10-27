# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def test_root_successful_response
    get root_path
    assert_response :success
  end
end
