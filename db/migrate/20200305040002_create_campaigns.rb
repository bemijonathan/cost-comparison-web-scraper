class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :preview
      t.string :site

      t.timestamps
    end
  end
end
