require_relative './author'
require_relative './book'
require_relative './reader'
require_relative './order'

class Library
  attr_reader :orders

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
  end

  def add_author(author)
    @authors.push author if author.is_a? Author
  end

  def add_book(book)
    @books.push book if book.is_a? Book
  end

  def add_reader(reader)
    @readers.push reader if reader.is_a? Reader
  end

  def add_order(order)
    @orders.push order if order.is_a? Order
  end
end
