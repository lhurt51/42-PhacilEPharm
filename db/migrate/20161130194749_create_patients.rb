class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
