# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    root 'home#index'
    post 'auth/:provider', to: 'auth#request', as: :auth_request
    get 'auth/:provider/callback', to: 'auth#callback', as: :callback_auth
    delete 'sign_out', to: 'auth#sign_out'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
