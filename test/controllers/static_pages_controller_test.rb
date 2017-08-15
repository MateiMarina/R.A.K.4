require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 test "should get home" do
    get static_pages_home_url
    assert_response :success
  end
  
  test "services_path" do
    get static_pages_service_path
    assert_response :success
  end
  
  test "should get about" do
    get static_pages_ourvalues_path
    assert_response :success
  end
  
   test "should get contact" do
    get static_pages_contact_path
    assert_response :success
  end
  
   test "should get ourvalues" do
    get static_pages_ourvalues_path
    assert_response :success
  end
  
  test "should get static" do
    get static_pages_ourvalues_path
    assert_response :success
  end
  
  
  
end
