require 'test_helper'

class ContractTest < ActiveSupport::TestCase
  def setup
     @contract = Contract.new(contract_name:"name", contract_status:"status", services_rendered:"rendered",
     contract_value:"value", award_year:"award_year")
    end

    test "contract name should be present" do
    @contract.contract_name = " "
    assert_not @contract.valid?
    end


    test "contract_status should be present" do
    @contract.contract_status = " "
    assert_not @contract.valid?
    end


    test "services_rendered should be present" do
    @contract.services_rendered = " "
    assert_not @contract.valid?
    end



    test "contract_value should be present" do
    @contract.contract_value = " "
    assert_not @contract.valid?
    end



    test "award_year should be present" do
    @contract.award_year = " "
    assert_not @contract.valid?
    end

end
