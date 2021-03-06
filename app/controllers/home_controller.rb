class HomeController < ApplicationController
  before_action :set_book, only: %i[show]
  def index
    @books = Book.all
    if params[:search].blank?
    else
      @books = Book.where('title LIKE ? or category LIKE ?','%' + params[:search] + '%',
                                                            '%' + params[:search] + '%')
      end
  end


  def show
    # @book = Book.find(params[:book_id])
  end
  
  # def new
  # end

  private
   # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end
end
