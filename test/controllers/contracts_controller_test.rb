require 'test_helper'

class ContractsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get new" do
    get new_contract_path 
    assert_response :success
  end

  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_contract_path(:id)
  #   assert_response :success
  # end
  
end
