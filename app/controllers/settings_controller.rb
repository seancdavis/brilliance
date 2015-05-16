class SettingsController < ApplicationController

  include SettingsHelper

  before_filter :authenticate_admin!

  def new
    if (
      params[:group].blank? ||
      !Setting.validated_groups.include?(params[:group])
    )
      not_found
    else
      @current_setting = Setting.new
    end
  end

  def create
    @current_setting = Setting.new(setting_params)
    if current_setting.save
      redirect_to settings_path, :notice => 'Setting saved!'
    else
      render 'new'
    end
  end

  def update
    if current_setting.update(setting_params)
      redirect_to settings_path, :notice => 'Setting saved!'
    else
      render 'edit'
    end
  end

  def destroy
    current_setting.destroy
    redirect_to settings_path, :notice => 'Setting deleted!'
  end

  private

    def setting_params
      params.require(:setting).permit(:title, :group)
    end

end
