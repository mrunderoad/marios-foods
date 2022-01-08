require 'rails_helper'

describe "add a review process" do
  before :each do
    visit products_path
    click_link 'Add a new product!'
    fill_in 'name', :with => 'Product'
    fill_in 'origin', :with => 'USA'
    fill_in 'cost', :with => '3'
    click_on "Create Project"
  end

  it "adds a new review" do
    click_link 'Product'
    click_link 'Add a review'
    fill_in 'author', :with => 'bob'
    fill_in 'content_body', :with => 'This is the review'
    fill_in 'rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    expect(page).to have_content 'Product'
  end

