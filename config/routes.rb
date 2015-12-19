Rails.application.routes.draw do
  get "welcome/index"
  get "welcome/tasks"

  root 'welcome#index'

end
