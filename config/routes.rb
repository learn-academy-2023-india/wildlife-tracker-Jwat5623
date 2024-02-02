Rails.application.routes.draw do
  resources :animals do
    resources :sightings, only: [:index, :create]
    get 'animal_sightings_reports/:id', to: 'animal_sightings_reports#show', as: :animal_sightings_report
    get 'animal_sightings_reports', to: 'animal_sightings_reports#index', as: :animal_sightings_reports
  end

  resources :sightings, only: [:show, :update, :destroy]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
