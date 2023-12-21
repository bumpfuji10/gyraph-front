Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'ping', to: 'ping#index'

      resources :users

      resources :practice_records

      resources :practice_details

    end
  end
end
