class AvatarService
  def get_characters(query)
    Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?perPage=10000&affiliation=#{query}")
  end
end