class CreateEditedCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :edited_campaigns do |t|
      t.string :name
      t.text :template_design
      t.string :template_parent
      t.string :settings
      t.string :user

      t.timestamps
    end
  end
end
