class Animal < ApplicationRecord
  has_many :donations
  validates :name, uniqueness: { scope: :species,
                                 message: "name and speices combination was already taken" }
  def self.available_species
    # an array of species
    ["cat", "dog", "butterfly", "lizard", "fish", "goat"]
  end
end
