class Author
  attr_reader :name, :biography

  def initialize(name, biography = '')
    validate(name, biography)
    @name = name
    @biography = biography
  end

  def validate(name, biography)
    raise IncorrectAttributeType unless name.is_a? String
    raise IncorrectAttributeType unless biography.is_a? String
  end
end
