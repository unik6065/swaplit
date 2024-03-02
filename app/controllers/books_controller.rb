class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: @book.errors
    end
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render json: { message: 'Book deleted!' }
  end

  private

  def book_params
    params.require(:book).permit(:EAN, :editor, :collection, :publication_date, :title, :author_id)
  end
end
