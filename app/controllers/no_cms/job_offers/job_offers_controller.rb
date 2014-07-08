module NoCms::JobOffers
  class JobOffersController < ApplicationController
    def index
      @job_offers = NoCms::JobOffers::JobOffer.includes(:translations).all
    end

    def show
      @job_offer = NoCms::JobOffers::JobOffer.includes(:translations).friendly.find params[:id]
    end
  end
end
