require 'test_helper'

class SaludosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saludos_index_url
    assert_response :success
  end

end
