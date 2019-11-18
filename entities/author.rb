class Author
  include Validation

  attr_reader :name, :biography

  def initialize(name:, biography: '')
    @name = name
    @biography = biography
    validate
  end

  def to_s
    name
  end

  private

  def validate
    check_type name, String
    check_type biography, String
    check_not_empty name
  end

end
