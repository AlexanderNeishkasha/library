require 'date'

class Order
  include Validation
  attr_reader :reader, :book, :date

  def initialize(book, reader, date = ::Date.today)
    validate(book, reader, date)
    @book = book
    @reader = reader
    @date = date
  end

  def validate(book, reader, date)
    check_type book, Book
    check_type reader, Reader
    check_type date, Date
  end
end
