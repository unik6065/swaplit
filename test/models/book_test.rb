require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(EAN: '9782266286268', title: 'Seigneur des anneaux', author_id: authors(:tolkien).id, editor: 'Pocket', collection: 'Fantasy',
                     publication_date: '2018-09-1')
  end

  test 'should save book if all required field are present ' do
    assert @book.save
  end

  test 'should not save book if EAN is missing' do
    @book.EAN = nil
    assert_not @book.save
  end

  test 'should not save book if title is missing' do
    @book.title = nil
    assert_not @book.save
  end

  test 'should not save book if editor is missing' do
    @book.editor = nil
    assert_not @book.save
  end

  test 'should not save book if collection is missing' do
    @book.collection = nil
    assert_not @book.save
  end
  test 'should not save book if publication date is missing' do
    @book.publication_date = nil
    assert_not @book.save
  end

  test 'should not save book if EAN is not unique' do
    @book.save
    @book2 = Book.new(EAN: '9782266286268', title: 'Seigneur des anneaux', author_id: authors(:tolkien).id, editor: 'Pocket', collection: 'Fantasy',
                      publication_date: '2018-09-1')
    assert_not @book2.save
  end
end
