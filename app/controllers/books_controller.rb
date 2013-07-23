class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    flash[:notice] = 'Book was successfully created.' if @book.save
    respond_with(@book)
  end

  def update
    flash[:notice] = 'Book was successfully updated.' if @book.update(book_params)
    respond_with(@book)
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :price, :buyer_id, :seller_id)
    end
end
