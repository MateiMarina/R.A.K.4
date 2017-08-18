require 'test_helper'

class ScrapsControllerTest < ActionDispatch::IntegrationTest
  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end

end
