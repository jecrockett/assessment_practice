require 'rails_helper'

RSpec.describe "product search", js: true do
  it "returns 15 products for sennheiser search" do
    visit search_path
    fill_in "search", with: "sennheiser"
    click_on "Search"

    within '.search-results' do
      expect(page).to have_css('.item', count: 15)
    end
  end

  it "returns 3 products for sennheiser headphones white search" do
    visit search_path
    fill_in "search", with: "sennheiser headphones white"
    click_on "Search"

    within '.search-results' do
      expect(page).to have_css('.item', count: 3)
    end
  end
end
