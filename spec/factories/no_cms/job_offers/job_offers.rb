# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_job_offers_job_offer, class: NoCms::JobOffers::JobOffer do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
  end
end
