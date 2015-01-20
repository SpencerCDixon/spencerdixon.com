Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  namespace :admin do
    resources :users, only: [:index]
    resources :posts, except: [:show]
    resources :goals
  end
  match '/post', to: 'welcome#show', via: [:get]

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
