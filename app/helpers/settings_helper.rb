module SettingsHelper

  def all_settings
    @all_settings ||= Setting.all
  end

  def current_setting
    @current_setting ||= begin
      all_settings.select { |s| s.id == params[:id].to_i }.first
    end
  end

end
