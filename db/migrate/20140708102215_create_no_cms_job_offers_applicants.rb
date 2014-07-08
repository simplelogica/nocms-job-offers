class CreateNoCmsJobOffersApplicants < ActiveRecord::Migration
  def change
    create_table :no_cms_job_offers_applicants do |t|
      t.string :name
      t.string :position
      t.string :message

      t.timestamps
    end
  end
end
