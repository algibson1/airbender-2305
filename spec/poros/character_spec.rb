require "rails_helper"

RSpec.describe Character do 
  it "has character's attributes" do
    azula = Character.new({
      "_id": "5cf5679a915ecad153ab68da",
      "allies": ["Ozai","Zuko "],
      "enemies": ["Iroh","Zuko","Kuei","Long Feng","Mai","Ty Lee","Ursa "],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      "name": "Azula",
      "affiliation": " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
      })

    expect(azula.id).to eq("5cf5679a915ecad153ab68da")
    expect(azula.name).to eq("Azula")
    expect(azula.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
    expect(azula.allies).to eq("Ozai, Zuko")
    expect(azula.enemies).to eq("Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa")
    expect(azula.affiliations).to eq("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end