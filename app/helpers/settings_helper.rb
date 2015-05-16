module SettingsHelper

  def all_settings
    @all_settings ||= Setting.all
  end

  def current_setting
    @current_setting ||= begin
      all_settings.select { |s| s.id == params[:id].to_i }.first
    end
  end

  def current_setting_group
    current_setting.group.titleize
  end

  def setting_groups
    Setting.groups
  end

  Setting.groups.each do |name|
    define_method name do
      all_settings.select { |s| s.group == name.singularize }
        .sort_by(&:title)
    end
  end

end
