module StatusesHelper

  def all_statuses
    @all_statuses ||= Status.alpha
  end

end
