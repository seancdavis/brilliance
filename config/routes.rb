Rails.application.routes.draw do

  # ------------------------------------------ Users (Devise)

  devise_for :users, :skip => [:sessions, :registrations]
  devise_scope :user do
    get '/login' => 'devise/sessions#new', :as => :new_user_session
    post '/login' => 'devise/sessions#create', :as => :user_session
    get '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # ------------------------------------------ Public
  #
  # After we define all namespaced routes, we can move on to
  # those routes that are not namespaced.
  #
  # resources :users
  #
  # ------------------------------------------ Home Page

  root :to => 'home#index'

end
