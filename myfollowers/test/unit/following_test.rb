require 'test_helper'

class FollowingTest < ActiveSupport::TestCase
  should "be valid" do
    assert Following.new.valid?
  end
end
