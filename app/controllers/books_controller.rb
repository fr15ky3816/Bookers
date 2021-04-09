class BooksController < ApplicationController

  def index
    @book = Book.all
    @book_new = Book.new
  end


  def create
    @book_new = Book.new(book_params)
    if @book_new.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book_new.id)
    else
      @book = Book.all
      render("books/index")
    end
  end

  def show
    @book = Book.find_by(id: params[:id])

  end

  def edit
    @book = Book.find_by(id: params[:id])

  end

  def update
    @book = Book.find_by(id: params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated"
      redirect_to book_path(@book.id)
    else
      render("books/edit")
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:notice] = "Book was successfully destroyed"
      redirect_to books_path
    else
      flash[:notice] = "Delete failed!"
      render("books/index")
    end
  end

  def _error_messages
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

