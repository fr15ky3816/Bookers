class BooksController < ApplicationController


  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to homes_index_path
  end

  def show
    @book = Book.find_by(id: params[:id])

  end

  def edit
    @book = Book.find_by(id: params[:id])

  end

  def update
    @book.save
    redirect_to books_show_path
  end

  def destroy
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

