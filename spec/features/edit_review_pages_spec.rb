require 'raile_helper'

describe "editing a review" do
  before :each do
    visit products_path
    click_link "Add a new product!"
    fill_in 'name', :with => 'Phone'
    fill_in 'cost', :with => '5'
    fill_in 'origin', :with => 'USA'
    click_on 'Create Product'
    click_link 'Phone'
    click_link 'Add a review'
    fill_in 'author', :with => 'bob'
    fill_in 'content_body', :with => 'This is the review'
    fill_in 'rating', :with => '4'
    click_on 'Create Review'
  end

  it "edits a review" do
    click_link 'bob'
    click_link 'edit'
    fill_in 'author', :with => 'jeff'
    fill_in 'content_body', :with => 'This is the other edited review'
    fill_in 'rating', :with => '3'
    click_on 'Update Review'
    expect(page).to have_content 'Review successfully updated!'
    expect(page).to have_content 'jeff'
    expect(page).to have_no_content 'bob'
  end
end
