Rails.application.routes.draw do
  resources :measures
  resources :measures_imports, only: [:new, :create]

  resources :actions
  root 'solutions#index'
  get 'solutions/data', to: 'solutions#data'
  resources :solutions
  post 'solutions/upload', to: 'solutions#upload'
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
