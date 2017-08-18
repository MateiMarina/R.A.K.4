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


  # test "should create new record" do
  # get new_contract_path
  # assert_response :success
  # assert_difference "Contract.count" do
  # post contracts_path contract:  {  contract_name: "Shell ", contract_status: "In Progress ", services_rendered: "N/A ",  contract_value: "£1000", award_year: "2016"}
  # end
  # assert_redirect_to contracts_path
  # end




  # test "if not create in the database" do
  # assert_no_difference "Contract.count" do
  # post contracts_path location: { contract_name: " ", contract_status: " ", services_rendered: " ",  contract_value: " ", award_year: " "}
  # end
  # assert_template 'new'
  # end


  # test "should get edit" do
  #   get edit_contract_path(:id)
  #   assert_response :success
  # end

end
