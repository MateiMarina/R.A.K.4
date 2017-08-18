require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  
  
  def setup
    @location = Location.new(country: "Aberdeen", supra_region: "Scotland", region:"Uk")
  end
  
  test "country should be present" do
    @location.country = "  "
    assert_not @location.valid?
  end
  
  test "supra_region should be present" do
    @location.supra_region = ""
    assert_not @location.valid?
  end
  
  
  test "region should be present" do
    @location.region = " "
    assert_not @location.valid?
  end
  
end
