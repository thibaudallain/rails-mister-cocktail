class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true

  def self.ingredient_list
    list = []
    Ingredient.all.each do |ingredient|
      list << ingredient.name
    end
    return list
  end
end
