class Character 
  attr_reader :id,
              :name,
              :photo,
              :allies,
              :enemies,
              :affiliations
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = allies?(data[:allies])
    @enemies = enemies?(data[:enemies])
    @affiliations = affiliations?(data[:affiliation])
  end

  def allies?(allies)
    return "None" if allies.empty?
    allies.join(", ").strip
  end

  def enemies?(enemies)
    return "None" if enemies.empty?
    enemies.join(", ").strip
  end

  def affiliations?(affiliations)
    return "None" if affiliations.empty?
    affiliations.strip
  end
end