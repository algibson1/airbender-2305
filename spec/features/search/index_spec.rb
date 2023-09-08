require "rails_helper"

RSpec.describe "Search Index" do
  context "when searching for Fire Nation residents" do
    it "shows all Fire Nation residents and their information" do
      # When I visit "/"
      visit root_path

      # And I select "Fire Nation" from the select field
      select("Fire Nation", from: :nation)

      # And I click "Search For Members"
      click_on("Search For Members")

      # Then I should be on page "/search"
      expect(current_path).to eq(search_path)

      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      expect(page).to have_content("Total Fire Nation Members:")

      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      ####Expect there to be 25 blocks of character info

      # And for each of the members I should see:
      # characters = Facade Call
      #characters.each do |character|
      # within(tag with character id)
      # expect to find name of character
      # expect a photo
      #expect a list of allies OR None
      # expect a list of enemies OR none
      # expect affiliations
    end
  end
end


# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has