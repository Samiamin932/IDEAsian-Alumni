Rails.application.routes.draw do
  resources :alumni_assignments
  resources :mentor_assignments
  resources :mentees
  resources :mentors
  resources :alumnis
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
