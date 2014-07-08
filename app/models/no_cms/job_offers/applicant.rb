module NoCms::JobOffers
  class Applicant < ActiveRecord::Base
    validates :name, presence: true
  end
end
