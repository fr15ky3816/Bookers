class HomesController < ApplicationController
  def top
  end

  def index
    @book = Book.all
    @book_new = Book.new
  end

  
end
