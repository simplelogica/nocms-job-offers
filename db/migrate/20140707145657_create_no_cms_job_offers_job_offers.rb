class CreateNoCmsJobOffersJobOffers < ActiveRecord::Migration
  def change
    create_table :no_cms_job_offers_job_offers do |t|
      t.timestamps
    end

    create_table :no_cms_job_offers_job_offer_translations do |t|
      t.belongs_to :no_cms_job_offers_job_offer, index:  { name: 'index_no_cms_job_offer_translations_on_offer_id' }

      t.string :locale
      t.string :title
      t.string :description
    end
  end
end
