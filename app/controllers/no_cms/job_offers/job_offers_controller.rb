module NoCms::JobOffers
  class JobOffersController < ApplicationController
    def index
      @job_offers = NoCms::JobOffers::JobOffer.includes(:translations).all
    end
  end
end
