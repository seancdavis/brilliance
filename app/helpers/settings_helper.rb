module SettingsHelper

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
