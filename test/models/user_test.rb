require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty lecture' do
    user = User.new
    user.save
    refute user.valid?
  end

  test 'should save valid lecture' do
    user = User.new
    user.name = 'Randomn'
    user.lastName = 'rng'
    user.dob = '02/02/2002'
    user.email = 'randomn@email.com'
    user.password = '123456789'
    user.save
    assert user.valid?
  end
end
