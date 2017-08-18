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


  test "should create a new record" do
  get new_location_path
  assert_response :success
  assert_difference "Location.count" do
  post locations_path location: { country: "can create", supra_region: "article successfully.",  region:"UK"} 
  end 
  assert_redirected_to locations_path
  end 
  
  test "if not create in the database" do
  assert_no_difference "Location.count" do
  post locations_path location: { country: " ", supra_region: " ",  region:" "} 
  end
  assert_template 'new'
  end 
  
end 


      

 