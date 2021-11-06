# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Visiting the homepage", type: :feature do
  scenario "shows the navbar with all links" do
    visit about_path
    expect(page).to have_content("ABOUT")
  end
end
