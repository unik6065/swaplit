require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test 'should save author if all required field are present' do
    author = Author.new(first_name: 'John', last_name: 'Doe', date_of_birth: '1990-01-01')
    assert author.save
  end

  test 'should not save author if first name is missing' do
    author = Author.new(last_name: 'Doe', date_of_birth: '1990-01-01')
    assert_not author.save
  end

  test 'should not save author if last name is missing' do
    author = Author.new(first_name: 'John', date_of_birth: '1990-01-01')
    assert_not author.save
  end

  test 'should not save author if date of birth is missing' do
    author = Author.new(first_name: 'John', last_name: 'Doe')
    assert_not author.save
  end
end
