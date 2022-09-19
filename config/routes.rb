Rails.application.routes.draw do
  resources :login

  root 'welcome#index'

  get "/login", to: "login#index"
  get "/welcome", to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
