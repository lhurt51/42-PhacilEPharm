class CreatePharmacies < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacies do |t|
      t.string :user_name
      t.string :company_name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
