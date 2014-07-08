class AddJobOfferToNoCmsJobOffersApplicant < ActiveRecord::Migration
  def change
    add_reference :no_cms_job_offers_applicants, :job_offer, index: true
  end
end
