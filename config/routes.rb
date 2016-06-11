Rails.application.routes.draw do

#  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth'

        resources :teams, only: [:show, :create, :update]

        resources :users

        resources :product_types
        resources :products
      end
    end
#  end
end
