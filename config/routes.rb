Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    resources :items
  end
  get "welcome/index"

  root to: 'welcome#index'

end
