class Book
  attr_reader :title, :author

  def initialize(title, author)
    validate(title, author)
    @title = title
    @author = author
  end

  def validate(title, author)
    raise IncorrectAttributeType unless title.is_a? String
    raise IncorrectAttributeType unless author.is_a? Author
  end
end
