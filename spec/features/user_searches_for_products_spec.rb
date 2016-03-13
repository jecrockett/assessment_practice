require 'rails_helper'

RSpec.describe "product search", js: true do
  visit root_path
  fill_in "search", with: "sennheiser"
  click_on "Search"

  within '.search-results' do
    expect(page).to have_css('.item', count: 15)
  end
end
