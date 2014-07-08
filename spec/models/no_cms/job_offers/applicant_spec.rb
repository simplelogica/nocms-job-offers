require 'spec_helper.rb'

describe NoCms::JobOffers::Applicant do
  it_behaves_like "model with required attributes", :nocms_job_offers_applicant, [:name, :job_offer]
end
