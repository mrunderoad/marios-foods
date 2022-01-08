require 'rails_helper'

describe Product do
  it { should belong_to(:products) }
  describe "#titleize_review" do
    it "will capitilize the review name" do
      review = Review.create({author: "harry"})
      expect(review.author()).to(eq("Harry"))
    end
  end
  it {should validate_presence_of :author}
end