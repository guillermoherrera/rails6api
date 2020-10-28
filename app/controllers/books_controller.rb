class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def create
    byebug
    book = Book.new(book_params)
    
    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.required(:book).permit(:titulo, :autor)
  end
end
