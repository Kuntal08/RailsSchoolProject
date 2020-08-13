class Admin::StudentsController < ApplicationController
  before_action :is_admin?, only: [:new,:create,:destroy]
  def index
    if current_user.admin?
      @students = Student.all
    else
      user_email = current_user.email
      @students = Student.where(email: user_email)
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to [:admin, @student]
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to [:admin, @student]
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to admin_students_path
  end

  private
    def student_params
      params.require(:student).permit(:name, :birth_date, :age, :academic_year, :father_name, :mother_name, :address, :contact, :image, :file, :classe_id, :email, :payment_mode, :amount, :status)
    end

end
