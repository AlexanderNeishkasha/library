class Statistic
  def initialize(library)
    @library = library
  end

  def top_readers(count = 1)
    uniq_group_orders_by(:reader).take(count)
  end

  def most_populars_books(count = 1)
    uniq_group_orders_by(:book).take(count)
  end

  def count_readers_of_popular_books(count = 3)
    books = most_populars_books(count)
    @library.orders.select { |order| books.include? order.book }.map(&:reader).uniq.length
  end

  private

  def uniq_group_orders_by(entity)
    @library.orders.group_by(&entity).sort_by { |_, orders| -orders.length }.map(&:first).uniq
  end
end
