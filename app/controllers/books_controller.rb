class BooksController < ApplicationController


  def create
    @book_new = Book.new(book_params)
    if @book_new.save
      flash[:notice] = "Book was succesfully created."
      redirect_to homes_index_path
    else
      @book = Book.all
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
    @book = Book.find_by(id: params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was succesfully updated"
      redirect_to book_path(@book.id)
    else
      render("books/edit")
    end
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

