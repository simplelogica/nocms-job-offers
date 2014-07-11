module NoCms::JobOffers
  class JobOffer < ActiveRecord::Base

    include  NoCms::JobOffers::Concerns::TranslationScopes

    translates :title, :description, :slug, :draft

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    has_many :applicants, class_name: 'NoCms::JobOffers::Applicant', inverse_of: :job_offer

    scope :drafts, ->() { where_with_locale(draft: true) }
    scope :no_drafts, ->() { where_with_locale(draft: false) }

    validates :title, :description, presence: true
  end
end
