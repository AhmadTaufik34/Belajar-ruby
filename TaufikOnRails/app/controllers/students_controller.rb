class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(resource_params)
    flash[:notice] = 'Book has been update'
    redirect_to students_path(@student)
  end

  def destroy #Untuk menghapus data
    @rayon = rayon.find(params[:id])
    @rayon.destroy
    flash[:notice] = 'Book has been slain'
    redirect_to books_path
  end

  def show
    id = params[:id]
    @student =Student.find(id)
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(resource_params)
    student.save
    flash[:notice] = 'book has been created'
    redirect_to students_path
  end

  def destroy #Untuk menghapus data
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = 'Book has been slain'
    redirect_to students_path
  end

  private
  def resource_params
    params.require(:student).permit(:name, :username, :age, :address, :city, :nik)
  end
end
