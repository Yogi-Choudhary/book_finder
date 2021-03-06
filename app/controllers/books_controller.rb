class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  
  def index
    #binding.pry
    @books = Book.all
    if params[:search].blank?
    else
      @books = Book.where('title LIKE ? or category LIKE ?','%' + params[:search] + '%',
                                                            '%' + params[:search] + '%')
      #binding.pry
    end
    
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

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def send_book_mail
    @book = Book.find(params[:id])
    BookMailer.book_send(@book).deliver_now
    flash[:notice] = "book has been sent."
    redirect_to root_path(@book.id)
  end

  private
    
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :date, :isbn, :total_pages,
                                   :user_id, :image, :price, :description,
                                   :preview_pdf, :pdf_file, :category,
                                   :language)
    end
end
