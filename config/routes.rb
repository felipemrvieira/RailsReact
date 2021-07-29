Rails.application.routes.draw do
  devise_for :users
  resources :measures
  resources :measures_imports, only: [:new, :create]

  resources :actions
  resources :solutions
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
