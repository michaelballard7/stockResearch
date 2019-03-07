Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'index#index', as: 'home'

  get '/about', to: 'index#about'

  post '/', to: 'index#index'
end
