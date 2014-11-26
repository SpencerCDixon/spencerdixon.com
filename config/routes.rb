Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  namespace :admin do
    resources :users, only: [:index]
    resources :posts, except: [:show]
  end
  match 'post', to: 'welcome#show', via: [:get]
end
