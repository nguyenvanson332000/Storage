class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by id: params[:id]
    return if @user.present?

    flash[:danger] = t "wellcome"
    #redirect_to login_url
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "create success"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params
      .require(:user).permit :name, :email, :password, :password_confirmation
  end
end

