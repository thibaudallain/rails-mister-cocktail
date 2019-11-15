class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validate :photo_attached

  def photo_attached
    if !self.photo.attached?
      errors.add(:photo, "Obligatoire ! Sinon c'est moche.")
    end
  end
end
