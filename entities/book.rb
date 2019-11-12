class Book
  include Validation
  attr_reader :title, :author

  def initialize(title, author)
    validate(title, author)
    @title = title
    @author = author
  end

  def validate(title, author)
    check_type title, String
    check_type author, Author
  end
end
