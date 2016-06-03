Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      root to: 'pages#home'

      devise_for :users
      resource :user, only: [:show] do
        # resources :seeds, only[:index, :show]
        resources :vegetable_processes, only: [:index, :show]
      end
      resources :vegetable_processes, only: [:index, :show] do
        resource :calendar
      end
      resources :seeds, only: [:index, :show] do
        resources :events, only: [:index]
      end
    end
  end
end
