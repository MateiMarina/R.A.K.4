require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  
  test "should data table" do
    get static_pages_data_tables_path
    assert_response :success
  end

#   test "if create in the database" do
#   assert_no_difference "Employee.count" do
#   post employees_path employee:  {  full_name: " ", current_company: " ", country: " ",  position: " ", ak_notes: " ", classification: " " }
#   end
#   assert_template 'new'
#   end


#   test "if not create in the database" do
#   assert_no_difference "Employee.count" do
#   post employees_path employee:  {  full_name: " ", current_company: " ", country: " ",  position: " ", ak_notes: " ", classification: " " }
#   end
#   assert_template 'new'
#   end
end
