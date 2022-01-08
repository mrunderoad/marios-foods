require 'rails_helper'

describe "editing a product" do
  it "edits a product" do
    visit products_path
    click_link "Add a new product!"
    fill_in 'name', :with => 'Phone'
    fill_in 'cost', :with => '5'
    fill_in 'origin', :with => 'USA'
    click_on 'Create Product'
    click_link 'Phone'
    click_link 'Edit'
    fill_in 'name', :with => 'Doorbell'
    fill_in 'cost', :with => '1'
    fill_in 'origin', :with => 'Portland'
    click_on 'Update Product'
    expect(page).to have_content 'Doorbell'
  end
end