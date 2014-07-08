module NoCms::JobOffers
  class JobOffer < ActiveRecord::Base

    translates :title, :description, :slug

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    has_many :applicants, class_name: 'NoCms::JobOffers::Applicant', inverse_of: :job_offer

    validates :title, :description, presence: true
  end
end
