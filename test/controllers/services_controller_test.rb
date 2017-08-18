require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  # test "should get index" do
  #   get services_index_url
  #   assert_response :success
  # end

  test "should get new" do
    get new_service_path
    assert_response :success
  end

  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end
end
