class SettingsController < ApplicationController

  before_filter :authenticate_admin!

  def update
    if current_setting.update(setting_params)
      redirect_to(settings_path, :notice => 'Setting saved!')
    else
      render 'edit'
    end
  end

  private

    def setting_params
      params.require(:setting).permit(:body)
    end

end
