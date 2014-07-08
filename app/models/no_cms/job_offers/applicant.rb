module NoCms::JobOffers
  class Applicant < ActiveRecord::Base
    belongs_to :job_offer, class_name: 'NoCms::JobOffers::JobOffer', inverse_of: :applicants
    validates :name, :job_offer, presence: true
  end
end
