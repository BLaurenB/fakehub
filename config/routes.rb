Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/', to: "home#index"
  get '/:username', to: 'dashboard#index'
  get '/:username/?tab=repositories', to: 'dashboard#index'


end
