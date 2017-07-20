require 'test_helper'

class VesselsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vessels_index_url
    assert_response :success
  end

  test "should get show" do
    get vessels_show_url
    assert_response :success
  end

  test "should get destroy" do
    get vessels_destroy_url
    assert_response :success
  end

end
