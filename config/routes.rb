NephroPal::Application.routes.draw do
  # does the route need to be adjusted for delete method?
  # devise_for :users, :only => [:destroy]
  # this was a stack overflow fix, is this a bad way to do this?
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

  get 'assignments/new/:biopsy_id', :to => 'assignments#new'
  resources :assignments
  resources :doctors
  resources :biopsies, :only => [:new, :create]
  resources :user



  root :to => 'home#index'

  get "/home" => 'home#home'

  get "/new" => 'home#new'







end
