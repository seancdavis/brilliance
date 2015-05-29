Rails.application.routes.draw do

  # ------------------------------------------ Users (Devise)

  devise_for :users, :skip => [:sessions, :registrations]
  devise_scope :user do
    get '/login' => 'devise/sessions#new', :as => :new_user_session
    post '/login' => 'devise/sessions#create', :as => :user_session
    get '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # ------------------------------------------ Comments (PeanutGallery)

  namespace :peanut_gallery do
    resources :comments, :only => [:create, :update, :destroy]
  end

  # ------------------------------------------ Public

  # Settings
  get 'settings' => 'settings#index', :as => :settings
  resources :categories, :param => :slug
  resources :statuses, :param => :slug

  # Users
  get 'profile/edit' => 'users#edit', :as => :edit_profile
  patch 'profile/edit' => 'users#update', :as => :update_profile

  # Ideas
  post 'new' => 'ideas#new_search', :as => :new_idea_search
  resources :ideas, :path => '/', :param => :slug

  # ------------------------------------------ Home Page

  root :to => 'ideas#index'

end
