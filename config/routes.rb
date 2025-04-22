Rails.application.routes.draw do
  root "time_entries#index"

  resources :time_entries, only: [:index, :new, :create, :destroy] do
    member do
      post :stop
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
