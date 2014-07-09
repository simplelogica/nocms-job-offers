
module NoCms::JobOffers
  class ApplicantsController < ApplicationController

    def create
      @job_offer = NoCms::JobOffers::JobOffer.includes(:translations).friendly.find params[:job_offer_id]
      @applicant = @job_offer.applicants.create applicant_params

      render 'no_cms/job_offers/job_offers/show'
    end

    def applicant_params
      params.require(:applicant).permit(:name, :position, :message)
    end

  end
end
