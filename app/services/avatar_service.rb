class AvatarService
  def get_characters(query)
    Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{query}")
  end
end