require 'test_helper'

class TablesControllerTest < ActionDispatch::IntegrationTest
  test "should get datos" do
    get tables_datos_url
    assert_response :success
  end

end
