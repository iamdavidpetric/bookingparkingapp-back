Rails.application.routes.draw do
  devise_for :users, skip: :all
  namespace :api do
    namespace :v1 do
      resources :users
      resources :tickets
      resources :parkings
      resources :sessions
    end
  end
end
