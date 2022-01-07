class Review < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :rating, numericality: { in: 1..5 }
  validates_length_of :name, maximun: 50
  before_save(:titleize_review)

  private
    def titleize_review
      self.name = self.name.titleize
    end
end
