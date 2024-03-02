class AuthorsController < ApplicationController
  # create a new author
  def create
    author = Author.new(author_params)
    if author.save
      render json: author, status: :created
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end

  # update an existing author
  def update
    author = Author.find(params[:id])
    if author.update(author_params)
      render json: author, status: :ok
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end

  # show an existing author
  def show
    author = Author.find(params[:id])
    render json: author, status: :ok
  end

  # destroy an existing author
  def destroy
    author = Author.find(params[:id])
    author.destroy
    head :no_content
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :date_of_birth, :biography)
  end
end
