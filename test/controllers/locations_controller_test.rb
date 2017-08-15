require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
 test "should get new" do
    get new_location_path  
    assert_response :success
  end

  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end

end
