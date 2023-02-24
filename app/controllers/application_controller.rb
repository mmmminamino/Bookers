class ApplicationController < ActionController::Base
  def new
    @book=Book.new
  end
  
  def create
   @book = Book.new(book_params)
      if book.save
        flash[:notice]="Book was successflly created."
        redirect_to book_path(book.id)
      else
        render :index
      end
  end

  def index
    @books = Book.all
    @book=Book.new
  end

  def show
    @book = Book.find(params[:id])
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
       render :'/books/:id/edit' 
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
    params.require(:book).permit(:本のタイトル, :感想)
  end
end
