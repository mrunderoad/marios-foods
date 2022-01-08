require 'rails_helper'

describe "deleting a review"
  it "deletes a review" do
    visit products_path
    click_link 'Add a new product!'
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
    click_on 'bob'
    click_on 'Delete review'
    expect(page).to have_no_content 'bob'
  end
end