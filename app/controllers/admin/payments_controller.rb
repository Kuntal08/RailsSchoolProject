class Admin::PaymentsController < ApplicationController#Admin::MasterController
  before_action :is_admin?
  def index
    @payments = Student.all
  end

  def show
    @payment = Student.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = InvoicePdf.new(@payment)
        send_data pdf.render, filename: "invoice_#{@payment.name}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  def edit
    @payment = Student.find(params[:id])
  end

  def update
    @payment = Student.find(params[:id])

    if @payment.update(payment_params)
      redirect_to 'show'

    else
      render 'edit'
    end
  end

  def destroy
    @payment = Student.find(params[:id])
    @payment.destroy

    redirect_to admin_payments_path
  end

  def send_mail
    @student = Student.find(params[:id])
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    UserMailer.payment_invoice(@student, @current_user).deliver_now
    redirect_to admin_payments_path, notice: "Email Sent"
  end

  private
    def payment_params
      params.require(:payment).permit(:email, :payment_mode, :amount, :status)
    end

end
