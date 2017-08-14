require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get new" do
    get new_item_path  
    assert_response :success
  end

  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end

  test "should Vessels path" do
    get vessels_path  
    assert_response :success
  end

end
