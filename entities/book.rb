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

  def self.create_from_hash(hash)
    author = Author.create_from_hash(hash['author'])
    self.new(hash['title'], author)
  end
end
