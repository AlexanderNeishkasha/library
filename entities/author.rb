class Author
  attr_reader :name, :biography

  def initialize(name, biography = '')
    @name, @biography = name, biography
  end

  def to_hash
    {
        name: @name,
        biography: @biography
    }
  end

  def self.create_from_hash(hash)
    self.new(hash['name'], hash['biography'])
  end
end
