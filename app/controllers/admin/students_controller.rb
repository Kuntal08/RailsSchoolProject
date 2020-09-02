class Admin::StudentsController < ApplicationController
  before_action :is_admin?, only: [:destroy]
  def index
    if current_user.admin?
      @students = Student.all
    else
      user_email = current_user.email
      @students = Student.where(user_id: session[:user_id])
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
    @student.user_id = session[:user_id]
    if @student.save
      @student.amount = Fee.find_by(classe_id: @student.classe_id).total_fee
      @student.save
      redirect_to [:admin, @student]
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      @student.amount = Fee.find_by(classe_id: @student.classe_id).total_fee
      @student.save
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
      params.require(:student).permit(:name, :birth_date, :age, :academic_year, :father_name, :mother_name, :address, :contact, :image, :file, :classe_id, :email, :payment_mode, :amount, :status, :user_id)
    end

end
