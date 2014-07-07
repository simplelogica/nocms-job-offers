Rails.application.routes.draw do

  mount NoCms::JobOffers::Engine => "/no_cms/job_offers"
end
