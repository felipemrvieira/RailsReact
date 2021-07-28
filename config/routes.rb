Rails.application.routes.draw do
  root 'solutions#data'
  get 'solutions/index'
  get 'solutions/data', to: 'solutions#data'
  post 'solutions/upload', to: 'solutions#upload'
  post 'solutions/destroy', to: 'solutions#destroy'
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
