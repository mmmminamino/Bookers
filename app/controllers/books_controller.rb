class BooksController < ApplicationController
  def new
    @book=Book.new
  end
  
  def create
   @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(book.id)
    else
      render :new
  end

  def index
    @books=Book.all
    @book=Book.new
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end
  
  def update
    book= Book.find(params[:id])
    if book.update(book_params)
      flash[:notice]="Book was successflly updated."
      redirect_to book_path(book.id)
    else
      render :new
    end
  end
    
  def destroy
    book= Book.find(params[:id])
    book.destroy
    flash[:notice]="Book was successflly destroyed."
    redirect_to '/books'
  end
  
  private
  def book_params
    params.permit(:"本のタイトル",:"感想")
  end
end
