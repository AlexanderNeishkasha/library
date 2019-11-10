require 'date'

class Order
  def initialize(book, reader, date = ::Date.today)
    @book, @reader, @date = book, reader, date
  end

  def to_hash
    {
        book: @book.to_hash,
        reader: @reader.to_hash,
        date: @date
    }
  end
end