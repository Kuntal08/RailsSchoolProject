class Admin::ClassesController < ApplicationController
  before_action :is_admin?
  def index
    @classs = Classe.all
  end

  def show
    @class = Classe.find(params[:id])
  end

  def new
    @class = Classe.new
    @section = Section.all
  end

  def edit
    @class = Classe.find(params[:id])
    @section = Section.all
  end

  def create
    @class = Classe.new(classe_params)
    if @class.save
      redirect_to [:admin, @class]
    else
      render 'new'
    end
  end

  def update
    @class = Classe.find(params[:id])

    if @class.update(classe_params)
      redirect_to [:admin, @class]
    else
      render 'edit'
    end
  end

  def destroy
    @class = Classe.find(params[:id])
    @class.destroy

    redirect_to admin_classes_path
  end

  private
    def classe_params
      params.require(:classe).permit(:classe, :stage, :description)
    end

end
