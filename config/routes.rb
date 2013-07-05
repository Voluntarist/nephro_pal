NephroPal::Application.routes.draw do

  resources :doctors


  root :to => 'home#index'

  get "/yo" => 'home#index'

  get "/home" => 'home#home'

  get "/new" => 'home#new'

end
