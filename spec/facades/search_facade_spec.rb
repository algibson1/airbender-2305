require "rails_helper"

RSpec.describe SearchFacade do
  it "can access the service to search characters" do
    facade = SearchFacade.new
    results = facade.search("fire+natio")
    expect(results).to be_an(Array)
    expect(results).to all be_a(Hash)
  end
  
  it "can return members by nation" do
    facade = SearchFacade.new
    results = facade.get_characters("fire+nation")
    expect(results).to be_an(Array)
    expect(results).to all be_a(Character)
  end
end