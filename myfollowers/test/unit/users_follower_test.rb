require 'test_helper'

class UsersFollowerTest < ActiveSupport::TestCase
  should "be valid" do
    assert UsersFollower.new.valid?
  end
end
