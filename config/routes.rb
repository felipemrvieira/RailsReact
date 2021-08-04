Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :solutions
    end
  end
  root 'api/v1/solutions#index'
  devise_for :users
  resources :solutions
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
