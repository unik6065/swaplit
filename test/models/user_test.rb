require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should return a list of books' do
    user = users(:one)
    assert_equal 1, user.books.count
  end
end
