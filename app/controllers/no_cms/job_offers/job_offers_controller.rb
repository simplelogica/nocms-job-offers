module NoCms::JobOffers
  class JobOffersController < ApplicationController
    def index
      @job_offers = NoCms::JobOffers::JobOffer.no_drafts.includes(:translations).all
    end

    def show
      @job_offer = NoCms::JobOffers::JobOffer.no_drafts.includes(:translations).friendly.find params[:id]
      @applicant = @job_offer.applicants.build
    end
  end
end
