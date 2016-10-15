class CreateDrugSettings < ActiveRecord::Migration
  def self.up
    create_table :drug_settings, :primary_key => :drug_settings_id do |t|
      t.integer :drug_id
      t.integer :min_notify_days
      t.timestamps
    end
  end

  def self.down
    drop_table :drug_settings
  end
end
