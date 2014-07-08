# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_job_offers_applicant, class: NoCms::JobOffers::Applicant do
    name { Faker::Name.name }
    position { Faker::Company.name }
    message { Faker::Lorem.paragraph }
    job_offer { FactoryGirl.create :nocms_job_offers_job_offer }
  end
end
