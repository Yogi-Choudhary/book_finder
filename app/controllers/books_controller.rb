class BooksController < ApplicationController
  
  def index
    #binding.pry
    @books = Book.all
    if params[:search].blank?
    else
      @books = Book.where('title LIKE ?', '%' + params[:search] + '%')
      #binding.pry
    end
  end
  
  
end


 # if params[:search].blank?
 #      redirect_to(root_path, alert: "Empty field!") and return
 #      else
 #        @parameter = params[:search]
 #        @books = Book("LIKE :search", search: @parameter)
 #    end