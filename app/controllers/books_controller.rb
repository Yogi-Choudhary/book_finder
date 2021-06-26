class BooksController < ApplicationController
  
  def index
    if params[:search].blank?
      #redirect_to(index_path)
    else
      @book = params[:search]
      @book = Book("LIKE :search", search: @book)
    end
    #@books = Book.all
  end
  
  
end


 # if params[:search].blank?
 #      redirect_to(root_path, alert: "Empty field!") and return
 #      else
 #        @parameter = params[:search]
 #        @books = Book("LIKE :search", search: @parameter)
 #    end