class HomesController < ApplicationController
  def top
  end

  def index
    @book = Book.all
    @book_new = Book.new
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
