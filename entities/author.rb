class Author
  include Validation
  attr_reader :name, :biography

  def initialize(name, biography = '')
    @name = name
    @biography = biography
    validate
  end

  def validate
    check_type name, String
    check_type biography, String
  end

  def to_s
    name
  end
end
