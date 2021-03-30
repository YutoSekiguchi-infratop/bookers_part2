class BooksController < ApplicationController
  def index
    @books = Book.all
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
