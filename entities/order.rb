require 'date'

class Order
  attr_reader :reader, :book, :date

  def initialize(book, reader, date = ::Date.today)
    @book = book
    @reader = reader
    @date = date
  end
end
