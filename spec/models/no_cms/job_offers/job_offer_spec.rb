require 'spec_helper.rb'

describe NoCms::JobOffers::JobOffer do
  it_behaves_like "model with required attributes", :nocms_job_offers_job_offer, [:title, :description]
  it_behaves_like "model with slug", :nocms_job_offers_job_offer, :title
  it_behaves_like "model with has many relationship", :nocms_job_offers_job_offer, :nocms_job_offers_applicant, :applicants, :job_offer

end
