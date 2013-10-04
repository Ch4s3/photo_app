PhotoApp::Application.routes.draw do
  root :to => 'home#index'
  resources :users
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
