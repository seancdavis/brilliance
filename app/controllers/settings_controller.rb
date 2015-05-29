class SettingsController < ApplicationController

  before_filter :authenticate_admin!

  private

    def setting_params
      params.require(:setting).permit(:body)
    end

end
