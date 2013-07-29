NephroPal::Application.routes.draw do

  get 'assignments/new/:biopsy_id', :to => 'assignments#new'
  resources :assignments
  resources :doctors
  resources :biopsies, :only => [:new, :create]



  root :to => 'home#index'

  get "/home" => 'home#home'

  get "/new" => 'home#new'







end
