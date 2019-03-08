Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'index#index', as: 'home'

  get '/about', to: 'index#about'

  post '/', to: 'index#index'
end
