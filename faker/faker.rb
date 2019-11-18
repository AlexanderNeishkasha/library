require 'ffaker'

class Generator
  def initialize(library)
    @library = library
  end

  def fake_reader
    Reader.new(
      name: FFaker::Name.name,
      email: FFaker::Internet.email,
      city: FFaker::Address.city,
      street: FFaker::Address.street_name,
      house: rand(1..1000)
    )
  end

  def fake_author
    Author.new(name: FFaker::Name.name, biography: FFaker::Lorem.paragraph)
  end

  def fake_book(author)
    Book.new(title: FFaker::Lorem.sentence(rand(2..10)), author: author)
  end

  def fake_order(book, reader)
    Order.new(book: book, reader: reader, date: FFaker::Time.date)
  end

  def cross_readers_and_books(count_readers, count_books)
    authors = generate_fake_authors(count_books)
    readers = generate_fake_readers(count_readers)
    books = generate_fake_books(authors)
    orders = generate_fake_orders(readers, books)
    authors + books + readers + orders
  end

  def generate_fake_authors(count)
    authors = []
    count.times { authors.push(fake_author) }
    authors
  end

  def generate_fake_readers(count)
    readers = []
    count.times { readers.push(fake_reader) }
    readers
  end

  def generate_fake_books(authors)
    books = []
    authors.each { |author| books.push(fake_book(author)) }
    books
  end

  def generate_fake_orders(readers, books)
    orders = []
    readers.each { |reader| books.each { |book| orders.push(fake_order(book, reader)) } }
    orders
  end
end
