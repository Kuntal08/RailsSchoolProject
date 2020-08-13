class Admin::AgesController < ApplicationController
  before_action :is_admin?

  def index
    @ages = Age.all
  end

  def show
    @age = Age.find(params[:id])
    @classe = Classe.find(@age.classe_id)
  end

  def new
    @age = Age.new
  end

  def edit
    @age = Age.find(params[:id])
  end

  def create
    @age = Age.new(age_params)

    if @age.save
      redirect_to [:admin, @age]
    else
      render 'new'
    end
  end

  def update
    @age = Age.find(params[:id])

    if @age.update(age_params)
      redirect_to [:admin, @age]
    else
      render 'edit'
    end
  end

  def destroy
    @age = Age.find(params[:id])
    @age.destroy

    redirect_to admin_ages_path
  end

  private
    def age_params
      params.require(:age).permit(:classe_id, :date_from, :date_to, :age_from, :age_to, :date_as)
    end
end
