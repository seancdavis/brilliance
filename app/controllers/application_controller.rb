class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ApplicationHelper

  before_filter :authenticate_user!

  ['index','new','edit','show'].each do |name|
    define_method name do; end
  end

  private

    def authenticate_admin!
      authenticate_user!
      not_found unless current_user.is_admin?
    end

    # redirect to admin dashboard after signing in
    def after_sign_in_path_for(user)
      super
    end

    # redirect back to sign in form when signed out
    def after_sign_out_path_for(user)
      root_path
    end

end
