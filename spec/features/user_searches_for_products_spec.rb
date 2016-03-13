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
end
