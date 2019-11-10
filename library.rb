require './file_manager/file_manager_factory'
require './entities/author'
require './entities/book'
require './entities/reader'
require './entities/order'

class Library
  def initialize(filename = 'library.json')
    @authors = []
    @books = []
    @readers = []
    @orders = []
    @file_manager = FileManagerFactory.create(self, filename)
    @file_manager.read
  end

  def store
    @file_manager.store
  end

  def to_hash
    to_hash = Proc.new { |item| item.to_hash }
    {
        authors: @authors.map(&to_hash),
        books: @books.map(&to_hash),
        readers: @readers.map(&to_hash),
        orders: @orders.map(&to_hash),
    }
  end

  def add_author(author)
    @authors.push(author) if author.is_a? Author
  end

  def add_book(book)
    @books.push(book) if book.is_a? Book
  end

  def add_reader(reader)
    @readers.push(reader) if reader.is_a? Reader
  end

  def add_order(order)
    @orders.push(order) if order.is_a? Order
  end
end
