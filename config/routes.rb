Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :launches, only: [:index, :show]
      resources :rockets, only: [:index, :show]
      resources :launch_pads, only: [:index, :show]
    end
  end
end
