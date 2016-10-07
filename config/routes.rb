Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
    namespace :api, defaults: {format: :json} do
      namespace :v1 do

        root to: 'pages#home'

        devise_for :users
        namespace :account do
          resources :seeds, only: [:index, :show]
          resources :vegetable_processes, only: [:index, :show]
        end
        resources :vegetable_processes, only: [:index, :show] do
          resource :calendar
          resources :seeds, only: [:create]
          resources :stars, only: [:create, :destroy]
          get 'identify_star_and_destroy'
        end
      end
    end
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
