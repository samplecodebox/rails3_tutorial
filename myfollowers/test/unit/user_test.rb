require 'test_helper'

class UserTest < ActiveSupport::TestCase
#  should "be valid" do
#    assert User.new.valid?
#  end
  
  should_validate_presence_of :name
end
