require 'spec_helper.rb'

describe NoCms::JobOffers::JobOffer do
  it_behaves_like "model with required attributes", :nocms_job_offers_job_offer, [:title, :description]
end
