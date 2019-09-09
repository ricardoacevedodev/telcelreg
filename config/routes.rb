Rails.application.routes.draw do
  resources :tarifas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home'

  get 'pages/about', to: 'pages#about'
  get 'tarifas/new', to: 'tarifas#new'
end
