class BooksController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @books = Book.all
    @book = Book.new
  end
  
  def create
    @book = Book.new(create_book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  def destroy
  end
  
  private
  
    def create_book_params
      params.require(:book).permit(:title, :body)
    end
end
