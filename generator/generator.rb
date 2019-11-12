require 'ffaker'

class Generator
  def initialize(library)
    @library = library
  end

  def fake_reader
    reader = Reader.new(
      name: FFaker::Name.name,
      email: FFaker::Internet.email,
      city: FFaker::Address.city,
      street: FFaker::Address.street_name,
      house: rand(1..1000)
    )
    @library.add_reader(reader)
    reader
  end

  def fake_author
    author = Author.new(FFaker::Name.name, FFaker::Lorem.paragraph)
    @library.add_author(author)
    author
  end

  def fake_book
    author = fake_author
    book = Book.new(FFaker::Lorem.sentence(rand(2..10)), author)
    @library.add_book(book)
    book
  end

  def fake_order
    order = Order.new(fake_book, fake_reader, FFaker::Time.date)
    @library.add_order(order)
    order
  end
end
