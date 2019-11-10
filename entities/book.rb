class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title, @author = title, author
  end

  def to_hash
    {
        title: @title,
        author: @author.to_hash
    }
  end
end
