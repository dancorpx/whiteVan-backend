Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/login', to: 'login#login'
      resources :items, only: [ :index, :show, :update, :create, :destroy ]
      resources :exchanges, only: [:index, :show, :update, :create, :destroy] do
        resources :chat_records, only: [:index, :create]
      end
      resources :users, only: [:update]
    end
  end
end
