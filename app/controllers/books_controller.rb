class BooksController < ApplicationController


  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "Book was succesfully created."
    redirect_to homes_index_path
    else
      render("homes/index")
    end
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
    if book.destroy
      flash[:notice] = "Book was succesfully destroyed"
      redirect_to homes_index_path
    else
      flash[:notice] = "Delete failed!"
      render("homes/index")
    end
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

