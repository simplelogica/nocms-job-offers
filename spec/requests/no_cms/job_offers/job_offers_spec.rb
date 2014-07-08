require 'spec_helper'

describe NoCms::JobOffers::JobOffer do

  context "when visiting job offers index" do

    let(:job_offers) { create_list :nocms_job_offers_job_offer, 3 }

    before do
      job_offers.each(&:save!)
      visit no_cms_job_offers.job_offers_path
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display job offers") do
      job_offers.each do |job_offer|
        expect(page).to have_selector('li', text: job_offer.title)
      end
    end

    it("should link to job offers pages") do
      job_offers.each do |job_offer|
        expect(page).to have_selector "a[href='#{no_cms_job_offers.job_offer_path(job_offer)}']"
      end
    end

  end

end
