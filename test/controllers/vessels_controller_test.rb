require 'test_helper'

class VesselsControllerTest < ActionDispatch::IntegrationTest
  # test "should get index" do
  #   get vessels_index_url
  #   assert_response :success
  # end


  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end


end
