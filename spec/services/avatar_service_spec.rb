require "rails_helper"

RSpec.describe AvatarService do
  it "returns characters for a given nation" do
    response = AvatarService.new.get_characters("fire+nation")
    expect(response).to be_a(Faraday::Response)
    
    characters = JSON.parse(response.body, symbolize_names: true)
    characters.each do |character|
      expect(character).to have_key(:_id)
      expect(character).to have_key(:allies)
      expect(character).to have_key(:enemies)
      expect(character).to have_key(:name)
      expect(character).to have_key(:affiliation)
    end
  end
end