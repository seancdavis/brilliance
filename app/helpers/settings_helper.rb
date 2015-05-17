module SettingsHelper

  # ------------------------------------------ Settings

  def all_settings
    @all_settings ||= Setting.alpha
  end

  def current_setting
    @current_setting ||= begin
      all_settings.select { |s| s.slug == params[:slug] }.first
    end
  end

  def setting(name)
    setting = all_settings.select { |s| s.slug == name }.first
    return nil if setting.nil?
    setting.body
  end

  # ------------------------------------------ Categories

  def all_categories
    @all_categories ||= Category.alpha
  end

  def current_category
    @current_category ||= begin
      all_categories.select { |s| s.slug == params[:slug] }.first
    end
  end

  # ------------------------------------------ Statuses

  def all_statuses
    @all_statuses ||= Status.alpha
  end

  def current_status
    @current_status ||= begin
      all_statuses.select { |s| s.slug == params[:slug] }.first
    end
  end

end
