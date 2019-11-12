require_relative './author'
require_relative './book'
require_relative './reader'
require_relative './order'

class Library
  def initialize
    @authors = {}
    @books = {}
    @readers = {}
    @orders = {}
  end

  def add_author(author)
    id = 1
    id += @authors.keys.max || 0
    @authors[id] = author
  end

  def add_book(book)
    id = 1
    id += @books.keys.max || 0
    @books[id] = book
  end

  def add_reader(reader)
    id = 1
    id += @readers.keys.max || 0
    @readers[id] = reader
  end

  def add_order(order)
    id = 1
    id += @orders.keys.max || 0
    @orders[id] = order
  end
end
