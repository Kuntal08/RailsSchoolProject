class Admin::SectionsController < ApplicationController
  before_action :is_admin?
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def edit
    @section = Section.find(params[:id])
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to [:admin, @section]
    else
      render 'new'
    end
  end

  def update
    @section = Section.find(params[:id])

    if @section.update(section_params)
      redirect_to [:admin, @section]
    else
      render 'edit'
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy

    redirect_to admin_sections_path
  end

  private
    def section_params
      params.require(:section).permit(:section_name)
    end

end
