class Author
  include Validation
  attr_reader :name, :biography

  def initialize(name, biography = '')
    validate(name, biography)
    @name = name
    @biography = biography
  end

  def validate(name, biography)
    check_type name, String
    check_type biography, String
  end
end
