class ChangeAnimalIdInDonations < ActiveRecord::Migration[6.0]
  def change
     rename_column :donations, :animals_id, :animal_id
  end
end
