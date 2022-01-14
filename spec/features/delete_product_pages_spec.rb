require 'rails_helper'

describe "deleteing a product" do
  it "deletes a product" do
    visit products_path
    click_link "Add a new product!"
    fill_in 'name', :with => 'Phone'
    fill_in 'cost', :with => '5'
    fill_in 'origin', :with => 'USA'
    click_on 'Create Product'
    click_on 'Phone'
    click_on 'Delete product'
    expect(page).to have_no_content 'Phone'
  end
end