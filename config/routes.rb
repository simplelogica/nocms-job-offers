NoCms::JobOffers::Engine.routes.draw do
  resources :job_offers, only: [:index, :show] do
    resources :applicants, only: [:create]
  end
end
