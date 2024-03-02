require 'test_helper'

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test 'should create author' do
    assert_difference('Author.count') do
      post authors_url,
           params: { author: { biography: 'MyText', date_of_birth: '2021-07-01', first_name: 'MyString',
                               last_name: 'MyString' } }
    end

    assert_response :created
  end

  test 'should update author' do
    author = authors(:one)
    patch author_url(author),
          params: { author: { biography: 'MyText', date_of_birth: '2021-07-01', first_name: 'MyString',
                              last_name: 'MyString' } }
    assert_response :ok
  end

  test 'should show author' do
    author = authors(:one)
    get author_url(author)
    assert_response :ok
  end

  test 'should destroy author' do
    author = authors(:one)
    assert_difference('Author.count', -1) do
      delete author_url(author)
    end

    assert_response :no_content
  end
end
