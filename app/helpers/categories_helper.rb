module CategoriesHelper

  def all_categories
    @all_categories ||= Category.alpha
  end

end
