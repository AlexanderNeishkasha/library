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

  def to_hash
    {
      authors: @authors.map(&:to_hash),
      books: @books.map(&:to_hash),
      readers: @readers.map(&:to_hash),
      orders: @orders.map(&:to_hash)
    }
  end

  def from_hash(hash)
    @authors = hash['authors'].map { |author_hash| Author.create_from_hash(author_hash) }
    @books = hash['books'].map { |book_hash| Book.create_from_hash(book_hash) }
    @readers = hash['readers'].map { |reader_hash| Reader.create_from_hash(reader_hash) }
    @orders = hash['orders'].map { |order_hash| Order.create_from_hash(order_hash) }
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
