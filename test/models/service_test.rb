require 'test_helper'

class ServiceTest < ActiveSupport::TestCase



  def setup
     @service = Service.new(service_company_name: " name", address:"address", year_formed:"year", other_operational_countries:"country",
     about_company: "company", current_focus:"focus", services:"service", estimated_booking:"booking", financial_status:"financial_status")
  end


  test "operating_company_name should be present" do
    @service.service_company_name = " "
    assert_not @service.valid?
  end

  test "address should be present" do
    @service.address = " "
    assert_not @service.valid?
  end


  test "year_formed should be present" do
    @service.year_formed = " "
    assert_not @service.valid?
  end


  test "other_operational_countries should be present" do
    @service.other_operational_countries = " "
    assert_not @service.valid?
  end


  test "about_company should be present" do
    @service.about_company = " "
    assert_not @service.valid?
  end

  test "current_focus should be present" do
    @service.current_focus = " "
    assert_not @service.valid?
  end

  test "service should be present" do
    @service.services = " "
    assert_not @service.valid?
  end

  test "estimated_booking should be present" do
    @service.estimated_booking = " "
    assert_not @service.valid?
  end

  test "financial_statusshould be present" do
    @service.financial_status = " "
    assert_not @service.valid?
  end

end
