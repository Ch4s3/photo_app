class UsersController < ApplicationController
  has_secure_password

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, :notice => "Welcome Aboard!"
    else
      render "new"
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :f_name, :l_name,
      :password, :password_confirmation, :bio, :admin)
  end
end