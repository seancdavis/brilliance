module SettingsHelper

  def all_settings
    @all_settings ||= Setting.alpha
  end

  def current_setting
    @current_setting ||= begin
      all_settings.select { |s| s.slug == params[:slug] }.first
    end
  end

end
