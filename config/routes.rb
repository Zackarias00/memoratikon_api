Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :options, only: [:index, :show, :create]
    end
  end
end
