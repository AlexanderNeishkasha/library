require 'date'

class Order
  include Validation
  attr_reader :reader, :book, :date

  def initialize(book, reader, date = ::Date.today)
    @book = book
    @reader = reader
    @date = date
    validate
  end

  def validate
    check_type book, Book
    check_type reader, Reader
    check_type date, Date
  end
end
