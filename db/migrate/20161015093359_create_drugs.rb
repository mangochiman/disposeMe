class CreateDrugs < ActiveRecord::Migration
  def self.up
    create_table :drugs, :primary_key => :drug_id do |t|
      t.string :name
      t.string :batch_no
      t.date :expiry_date
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :drugs
  end
end
