class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :origin, presence:true
  validates_length_of :origin, maximum: 50
  validates_length_of :name, maximum: 50
  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end
