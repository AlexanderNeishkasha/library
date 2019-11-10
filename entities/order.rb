class Order
  def initialize(book, reader, date = Date.today)
    @book, @reader, @date = book, reader, date
  end
end