require 'test_helper'

class OperatingTest < ActiveSupport::TestCase
  def setup
     @operating = Operating.new(operating_company_name:"name", address:"address", year_formed:"2000",
        other_operational_countries:"operating", about_company:"company", current_focus:"current_focus",
        incumbent_irm_contractor:"incumbent", irm_frame_agreements:"agreement", estimated_irm_budget:"irm")
  end


  test "operating_company_name should be present" do
    @operating.operating_company_name = " "
    assert_not @operating.valid?
  end


  test "address should be present" do
    @operating.address = " "
    assert_not @operating.valid?
  end


  test "year_formedshould be present" do
    @operating.year_formed = " "
    assert_not @operating.valid?
  end

  test "other_operational_countries should be present" do
    @operating.other_operational_countries = " "
    assert_not @operating.valid?
  end

  test "about_company should be present" do
    @operating.about_company = " "
    assert_not @operating.valid?
  end

  test "current_focus should be present" do
    @operating.current_focus = " "
    assert_not @operating.valid?
  end


  test "incumbent_irm_contractor should be present" do
    @operating.incumbent_irm_contractor = " "
    assert_not @operating.valid?
  end


  test "irm_frame_agreements should be present" do
    @operating.irm_frame_agreements = " "
    assert_not @operating.valid?
  end


  test "estimated_irm_budget should be present" do
    @operating.estimated_irm_budget = " "
    assert_not @operating.valid?
  end



end
