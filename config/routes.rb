Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :tickets
      resources :parkings
    end
  end
end
