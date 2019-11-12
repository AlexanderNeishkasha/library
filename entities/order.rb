require 'date'

class Order
  def initialize(book, reader, date = ::Date.today)
    @book = book
    @reader = reader
    @date = date
  end
end
