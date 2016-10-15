class CreateDrugSettings < ActiveRecord::Migration
  def self.up
    create_table :drug_settings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :drug_settings
  end
end
