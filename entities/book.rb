class Book
  include Validation
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    validate
  end

  def validate
    check_type title, String
    check_type author, Author
  end
end
