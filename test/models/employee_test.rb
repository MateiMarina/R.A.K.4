require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end



  def setup
    @workers = Employee.new(full_name: "full_name", current_company:"company_name",
    country:"country", position:"position", ak_notes:"ak_notes", classification:"classification")
  end


   test "full_name should be present" do
    @workers.full_name = " "
    assert_not @workers.valid?
  end

   test "current_company should be present" do
    @workers.current_company= " "
    assert_not @workers.valid?
  end


   test "country should be present" do
    @workers.country = " "
    assert_not @workers.valid?
  end


   test "position should be present" do
    @workers.position = " "
    assert_not @workers.valid?
  end

   test "ak_notes should be present" do
    @workers.ak_notes = " "
    assert_not @workers.valid?
  end

   test "classification should be present" do
    @workers.classification = " "
    assert_not @workers.valid?
  end

end
