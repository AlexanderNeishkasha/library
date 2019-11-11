require 'date'

class Order
  def initialize(book, reader, date = ::Date.today)
    @book = book
    @reader = reader
    @date = date
  end

  def to_hash
    {
      book: @book.to_hash,
      reader: @reader.to_hash,
      date: @date
    }
  end

  def self.create_from_hash(hash)
    book = Book.create_from_hash(hash['book'])
    reader = Reader.create_from_hash(hash['reader'])
    date = Date.parse(hash['date'])
    new(book, reader, date)
  end
end
