Rails.application.routes.draw do

  # ------------------------------------------ Users (Devise)

  devise_for :users, :skip => [:sessions, :registrations]
  devise_scope :user do
    get '/login' => 'devise/sessions#new', :as => :new_user_session
    post '/login' => 'devise/sessions#create', :as => :user_session
    get '/logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  # ------------------------------------------ Public

  resources :ideas, :path => '/'

  # ------------------------------------------ Home Page

  root :to => 'ideas#index'

end
