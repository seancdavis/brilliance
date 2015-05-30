Rails.application.routes.draw do

  # ------------------------------------------ Users (Devise)

  devise_for :users, :skip => [:sessions, :registrations]
  devise_scope :user do
    get '/login' => 'devise/sessions#new', :as => :new_user_session
    post '/login' => 'devise/sessions#create', :as => :user_session
    get '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # ------------------------------------------ Admin / CMS

  mount Cambium::Engine => '/'
  namespace :admin do
    resources :statuses, :param => :slug
    resources :categories, :param => :slug
    resources :ideas, :param => :slug
  end

  # ------------------------------------------ Comments (PeanutGallery)

  namespace :peanut_gallery do
    resources :comments, :only => [:create, :update, :destroy]
  end

  # ------------------------------------------ Public

  # Settings
  get 'settings' => 'settings#index', :as => :settings
  scope 'settings' do
    resources :categories, :param => :slug, :except => [:index, :new, :show]
    resources :statuses, :param => :slug, :except => [:index, :new, :show]
  end

  # Users
  get 'profile/edit' => 'users#edit', :as => :edit_profile
  patch 'profile/edit' => 'users#update', :as => :update_profile

  # Ideas
  get 'categories/:slug' => 'categories#show', :as => :filter_category
  get 'statuses/:slug' => 'statuses#show', :as => :filter_status
  post 'new' => 'ideas#new_search', :as => :new_idea_search
  resources :ideas, :path => '/', :param => :slug

  # ------------------------------------------ Home Page

  root :to => 'ideas#index'

end
