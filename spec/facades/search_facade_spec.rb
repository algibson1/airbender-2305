require "rails_helper"

RSpec.describe SearchFacade do
  it "can return members by nation" do
    facade = SearchFacade.new
    results = facade.search("fire+nation")
    expect(results).to be_an(Array)
    expect(results).to all be_a(Character)
  end
end