NephroPal::Application.routes.draw do

  resources :assignments
  resources :doctors
  resources :biopsies, :only => [:new, :create]



  root :to => 'home#index'

  get "/yo" => 'home#index'

  get "/home" => 'home#home'

  get "/new" => 'home#new'





end
