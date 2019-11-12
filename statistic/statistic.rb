class Statistic
  def initialize(library)
    @library = library
  end

  def top_readers(count = 1)
    group_by_reader = @library.orders.group_by(&:reader)
    sorted_by_count = group_by_reader.sort_by { |reader, orders| -orders.length }
    readers = sorted_by_count.map { |reader, orders| reader }
    readers.take(count)
  end

  def most_populars_books(count = 1)
    group_by_book = @library.orders.group_by(&:book)
    sorted_by_count = group_by_book.sort_by { |book, orders| -orders.length }
    books = sorted_by_count.map { |book, orders| book}
    books.take(count)
  end

  def count_readers_of_popular_books(count = 1)
    books = most_populars_books(count)
    filtered_orders = @library.orders.select { |order| books.include? order.book }
    group_by_reader = filtered_orders.group_by(&:reader)
    group_by_reader.length
  end
end