require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test 'should get all books' do
    get books_url
    assert_response :success
  end

  test 'should add a book' do
    author = authors(:tolkien)
    post books_url,
         params: { book: { EAN: '978-0544003415', editor: 'Houghton Mifflin Harcourt', collection: 'The Lord of the ring',
                           publication_date: '1954-07-29', title: 'The Fellowship of the Ring', author_id: author.id } }
    assert_response :success
  end

  test 'should get a book' do
    book = books(:lord_of_the_rings)
    get book_url(book)
    assert_response :success
  end

  test 'should update a book' do
    book = books(:lord_of_the_rings)
    patch book_url(book),
          params: { book: { EAN: '978-0544003415', editor: 'Houghton Mifflin Harcourt', collection: 'The Lord of the ring',
                            publication_date: '1954-07-29', title: 'The Fellowship of the Ring' } }
    assert_response :success
  end

  test 'should delete a book' do
    book = books(:lord_of_the_rings)
    delete book_url(book)
    assert_response :success
  end
end
