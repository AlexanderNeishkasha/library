require 'ffaker'

class Generator
  def initialize(library)
    @library = library
  end

  def fake_reader
    @library.add_reader(Reader.new(
      name: FFaker::Name.name,
      email: FFaker::Internet.email,
      city: FFaker::Address.city,
      street: FFaker::Address.street_name,
      house: FFaker::Address.building_number
    ))
  end

  def fake_author
    @library.add_author(Author.new(FFaker::Name.name, FFaker::Lorem.paragraph))
  end

  def fake_book
    author = fake_author
    @library.add_book(Book.new(FFaker::Lorem.words(rand(3..10)), author))
  end

  def fake_order
    @library.add_order(Order.new(fake_reader, fake_book, FFaker::Time.date))
  end
end
