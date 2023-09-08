class AvatarService
  def get_characters(query)
    connection.get("characters?perPage=10000&affiliation=#{query}")
  end
  
  def connection 
    Faraday.new("https://last-airbender-api.fly.dev/api/v1/")
  end
end