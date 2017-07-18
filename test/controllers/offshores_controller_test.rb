require 'test_helper'

class OffshoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get offshores_index_url
    assert_response :success
  end

  test "should get show" do
    get offshores_show_url
    assert_response :success
  end

  test "should get new" do
    get offshores_new_url
    assert_response :success
  end

  test "should get create" do
    get offshores_create_url
    assert_response :success
  end

  test "should get edit" do
    get offshores_edit_url
    assert_response :success
  end

  test "should get update" do
    get offshores_update_url
    assert_response :success
  end

  test "should get destroy" do
    get offshores_destroy_url
    assert_response :success
  end

end
