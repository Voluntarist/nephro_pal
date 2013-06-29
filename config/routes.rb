NephroPal::Application.routes.draw do

  resources :doctors


  root :to => 'home#index'

end
