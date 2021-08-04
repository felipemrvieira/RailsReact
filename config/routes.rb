Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :solutions
      mount_devise_token_auth_for 'Admin', at: 'auth', controllers: {
        # confirmations:      'devise_token_auth/confirmations',
        # passwords:          'devise_token_auth/passwords',
        # omniauth_callbacks: 'devise_token_auth/omniauth_callbacks',
        registrations:        'api/v1/admins/registrations',
        sessions:             'api/v1/admins/sessions',
        # token_validations:  'devise_token_auth/token_validations'
      }
      
    end
  end
  root 'api/v1/solutions#index'
  devise_for :users
  resources :solutions
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
