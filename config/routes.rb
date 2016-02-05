Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    resources :items
  end
  get "welcome/index"
  get "welcome/tasks"

  root to: 'welcome#index'

end
