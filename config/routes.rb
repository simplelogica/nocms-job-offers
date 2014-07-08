NoCms::JobOffers::Engine.routes.draw do
  resources :job_offers, only: [:index]
end
