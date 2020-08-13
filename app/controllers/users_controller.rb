class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      if(session[:user_id] != nil)
        if current_user.admin == true
          @user.admin = true
          @user.save
          redirect_to root_url, notice: "Thank you for creating account!"
        end
      else
        if(session[:user_id])
          redirect_to root_url, notice: "Thank you for creating account!"
        else
          redirect_to new_session_url, notice: "Thank you for creating account!"
        end
      end
    else
      render "new"
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
