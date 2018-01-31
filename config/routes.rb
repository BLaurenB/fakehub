Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "dashboard#index"
  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/:username', to: 'dashboard#index'

end
