require 'date'

class Order
  attr_reader :reader, :book, :date

  def initialize(book, reader, date = ::Date.today)
    validate(book, reader, date)
    @book = book
    @reader = reader
    @date = date
  end

  def validate(book, reader, date)
    raise IncorrectAttributeType unless book.is_a? Book
    raise IncorrectAttributeType unless reader.is_a? Reader
    raise IncorrectAttributeType unless date.is_a? Date
  end
end
