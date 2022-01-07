class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { in: 1..5 }
  validates :content_body, presence: true
  validates_length_of :content_body, length: { in 50..250 }
  validates_length_of :author, maximun: 50
  before_save(:titleize_review)

  private
    def titleize_review
      self.name = self.name.titleize
    end
end
