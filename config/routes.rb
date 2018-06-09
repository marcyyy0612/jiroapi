Rails.application.routes.draw do
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search/genres', to: 'foods#search_genre'

  devise_for :user, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resource :users, only: [:create]
  end
end
