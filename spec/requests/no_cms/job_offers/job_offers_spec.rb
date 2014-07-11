require 'spec_helper'

describe NoCms::JobOffers::JobOffer do

  context "when visiting job offers index" do

    let(:job_offers) { create_list :nocms_job_offers_job_offer, 3 }
    let(:draft_job_offers) { create_list :nocms_job_offers_job_offer, 3, draft: true }

    before do
      job_offers.each(&:save!)
      draft_job_offers.each(&:save!)
      visit no_cms_job_offers.job_offers_path
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display job offers") do
      job_offers.each do |job_offer|
        expect(page).to have_selector('li', text: job_offer.title)
      end
    end
    it("should not display draft job offers") do
      draft_job_offers.each do |job_offer|
        expect(page).to_not have_selector('li', text: job_offer.title)
      end
    end

    it("should link to job offers pages") do
      job_offers.each do |job_offer|
        expect(page).to have_selector "a[href='#{no_cms_job_offers.job_offer_path(job_offer)}']"
      end
    end

  end

  context "when visiting a draft job offer page" do

    let(:job_offer) { create :nocms_job_offers_job_offer, draft: true }

    before do
      job_offer.save!

    end
    it("should not find the page") { expect{visit no_cms_job_offers.job_offer_path job_offer}.to raise_error }

  end

  context "when visiting a job offer page" do

    let(:job_offer) { create :nocms_job_offers_job_offer }

    before do
      job_offer.save!
      visit no_cms_job_offers.job_offer_path job_offer
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display the news item") do
      expect(page).to have_selector('h1', text: job_offer.title)
      expect(page).to have_content(job_offer.description)
    end

    context "when submitting an application" do

      before do

        fill_in I18n.t('activerecord.attributes.no_cms/job_offers/applicant.name'), with: Faker::Name.name
        fill_in I18n.t('activerecord.attributes.no_cms/job_offers/applicant.position'), with: Faker::Company.name
        fill_in I18n.t('activerecord.attributes.no_cms/job_offers/applicant.message'), with: Faker::Lorem.paragraph

        click_button I18n.t('no_cms.job_offers.applicants.form.submit')
      end

      it "should create the application" do
        expect(job_offer.applicants.count).to eq 1
      end



    end

  end

end
