class BooksController < ApplicationController


  def create
    book = Book.new(book_params)
    book.save
    redirect_to homes_index_path
  end

  def show
    @book = Book.find_by(id: params[:id])

  end

  def edit
    @book = Book.find_by(id: params[:id])

  end

  def update
    book = Book.find_by(id: params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to homes_index_path
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

