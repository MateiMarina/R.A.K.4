require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end
  
    test "should get data_tables" do
    get static_pages_data_tables_url
    assert_response :success
  end


  test "should get data" do
    get static_pages_data_tables_url
    assert_response :success
  end
end
