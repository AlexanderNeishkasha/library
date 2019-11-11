class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def to_hash
    {
      title: @title,
      author: @author.to_hash
    }
  end

  def self.create_from_hash(hash)
    author = Author.create_from_hash(hash['author'])
    new(hash['title'], author)
  end
end
