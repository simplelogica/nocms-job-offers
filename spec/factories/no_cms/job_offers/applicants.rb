# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_job_offers_applicant, class: NoCms::JobOffers::Applicant do
    name { Faker::Name.name }
    position { Faker::Company.name }
    message { Faker::Lorem.paragraph }
  end
end
