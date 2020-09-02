class Admin::FeesController < ApplicationController
  before_action :is_admin?
  def index
    @fees = Fee.all
  end

  def show
    @fee = Fee.find(params[:id])
  end

  def new
    @fee = Fee.new
  end

  def edit
    @fee = Fee.find(params[:id])
  end

  def create
    @fee = Fee.new(fee_params)

    if @fee.save
      redirect_to [:admin, @fee]
    else
      render 'new'
    end
  end

  def update
    @fee = Fee.find(params[:id])

    if @fee.update(fee_params)
      redirect_to [:admin, @fee]
    else
      render 'edit'
    end
  end

  def destroy
    @fee = Fee.find(params[:id])
    @fee.destroy

    redirect_to admin_fees_path
  end

  private
    def fee_params
      params.require(:fee).permit(:classe_id, :admission_fee, :annual_fee, :caution_money, :tution_fee, :almanac_fee, :total_fee)
    end
end
