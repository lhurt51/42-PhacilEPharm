class CreatePerscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :perscriptions do |t|
      t.string :drug_name
      t.integer :dosage
      t.integer :refils

      t.timestamps
    end
  end
end
