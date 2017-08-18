require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest

  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end


# test "should create new record" do
#     get new_employee_path
#     assert_response :success
#     assert_difference "Employee.count" do
#     post employees_path employee:  {  full_name: "Jenny", current_company: "Shell", country: "UK",  position: "Analyst", ak_notes: "N/A", classification: "N/A" }
#   end
#   assert_redirect_to employees_path
#   end


#   test "if not create in the database" do
#   assert_no_difference "Employee.count" do
#   post employees_path employee:  {  full_name: " ", current_company: " ", country: " ",  position: " ", ak_notes: " ", classification: " " }
#   end
#   assert_template 'new'
#   end
end
