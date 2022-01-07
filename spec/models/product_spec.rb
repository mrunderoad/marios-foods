require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  describe "#titleize_product" do
    it "will capitilize the product name"
      product = Product.create({name: "pizza"})
      expect(project.name()).to(eq("Pizza"))
    end
  end
  it {should validate_presence_of :name}
end