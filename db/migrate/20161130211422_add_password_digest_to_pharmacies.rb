class AddPasswordDigestToPharmacies < ActiveRecord::Migration[5.0]
  def change
    add_column :pharmacies, :password_digest, :string
  end
end
