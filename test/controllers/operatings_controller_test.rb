require 'test_helper'

class OperatingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get operatings_index_url
    assert_response :success
  end

  test "should get show" do
    get operatings_show_url
    assert_response :success
  end

  test "should get new" do
    get operatings_new_url
    assert_response :success
  end

  test "should get create" do
    get operatings_create_url
    assert_response :success
  end

  test "should get edit" do
    get operatings_edit_url
    assert_response :success
  end

  test "should get update" do
    get operatings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get operatings_destroy_url
    assert_response :success
  end

end
