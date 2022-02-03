# frozen_string_literal: true

require 'test_helper'

class ProveloperControllerTest < ActionDispatch::IntegrationTest
  def test_show_successful_response
    get proveloper_path
    assert_response :success
  end
end
