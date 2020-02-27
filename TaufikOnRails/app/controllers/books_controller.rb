class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def edit #Manampilkan data yang sudah disimpan di edit
    @book = Book.find(params[:id])
  end

  def update#melakukan proses ketika user mengedit data
    @book = Book.find(params[:id])
    @book.update(resource_params)
    flash[:notice] = 'Book has been update'
    redirect_to books_path(@book)
  end

  def destroy #Untuk menghapus data
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'Book has been slain'
    redirect_to books_path
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(resource_params)
    book.save
    flash[:notice] = 'book has been created'
    redirect_to books_path
  end
  
  private
  def resource_params
    params.require(:book).permit(:title, :page, :price, :description)
  end
end
