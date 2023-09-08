require "rails_helper"

RSpec.describe "Search Index" do
  context "when searching for Fire Nation residents" do
    it "shows 25 Fire Nation residents and their information" do
      # When I visit "/"
      visit root_path

      # And I select "Fire Nation" from the select field
      select("Fire Nation", from: :nation)

      # And I click "Search For Members"
      click_on("Search For Members")

      # Then I should be on page "/search"
      expect(current_path).to eq(search_path)

      # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      expect(page).to have_content("Total Fire Nation Members: 97")

      # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      expect(all(".character_info").count).to eq(25)

      # And for each of the members I should see:
      characters = SearchFacade.new.search("fire+nation")
      characters.each do |character|
        within("#character-#{character.id}") do
          # - The name of the member (and their photo, if they have one)
          expect(page).to have_content(character.name)
          expect(page).to have_selector(img)
          # - The list of allies or "None"
          expect(page).to have_content("Allies: #{!character.allies.empty? ? character.allies : "None"}")
          # - The list of enemies or "None"
          expect(page).to have_content("Enemies: #{!character.enemies.empty? ? character.enemies : "None"}")
          # - Any affiliations that the member has
          expect(page).to have_content("Affiliations: #{character.affiliations.empty? ? character.affiliations : "None"}")
        end
      end
    end
  end
end

