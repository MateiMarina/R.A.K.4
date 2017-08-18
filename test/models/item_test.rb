require 'test_helper'

class ItemTest < ActiveSupport::TestCase

    def setup
     @asset = Item.new(item_name:"name", item_type:"type", item_owner:"owner",  current_manager:"manager ",
     previous_manager:"previous_manager", item_specifications:"specification")
    end

    test "item_name should be present" do
    @asset.item_name = " "
    assert_not @asset.valid?
    end


    test "item_type should be present" do
    @asset.item_type = " "
    assert_not @asset.valid?
    end


    test "item owner should be present" do
    @asset.item_owner = " "
    assert_not @asset.valid?
    end


    test "current_manager should be present" do
    @asset.current_manager = " "
    assert_not @asset.valid?
    end


    test "previous_manager should be present" do
    @asset.previous_manager = " "
    assert_not @asset.valid?
    end


    test "item_specifications should be present" do
    @asset.item_specifications = " "
    assert_not @asset.valid?
    end



end
