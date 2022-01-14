require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link "Add a new product!"
    fill_in 'name', :with => 'Phone'
    fill_in 'cost', :with => '5'
    fill_in 'origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Successfully created product!'
    expect(page).to have_content 'Phone'
    expect(page).to have_content '5'
    expect(page).to have_content 'USA'
  end
end