Rails.application.routes.draw do

#  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth'

        resources :teams

        resources :users

        resources :product_types
        resources :products
      end
    end
#  end
end
