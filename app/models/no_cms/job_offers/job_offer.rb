module NoCms::JobOffers
  class JobOffer < ActiveRecord::Base
    translates :title, :description
    validates :title, :description, presence: true
  end
end
