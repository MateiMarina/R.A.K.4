require 'test_helper'

class ScrapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scraps_index_url
    assert_response :success
  end

  test "should get show" do
    get scraps_show_url
    assert_response :success
  end

  test "should get new" do
    get scraps_new_url
    assert_response :success
  end

  test "should get create" do
    get scraps_create_url
    assert_response :success
  end

  test "should get edit" do
    get scraps_edit_url
    assert_response :success
  end

  test "should get update" do
    get scraps_update_url
    assert_response :success
  end

  test "should get destroy" do
    get scraps_destroy_url
    assert_response :success
  end

end
