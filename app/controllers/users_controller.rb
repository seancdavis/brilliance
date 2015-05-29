class UsersController < ApplicationController

  def edit
  end

  def update
    @user = current_user
    p = user_params
    if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
      p = user_params.except("password", "password_confirmation")
    end
    if @user.update(p)
      if @user == current_user && p[:password].present?
        sign_in(@user, :bypass => true)
      end
      redirect_to edit_profile_path, :notice => 'Profile saved!'
    else
      render 'edit'
    end
  end

  private

    def user_params
      params
        .require(:user)
        .permit(:name, :email, :password, :password_confirmation)
    end

end
