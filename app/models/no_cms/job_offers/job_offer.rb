module NoCms::JobOffers
  class JobOffer < ActiveRecord::Base

    translates :title, :description, :slug

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    validates :title, :description, presence: true
  end
end
