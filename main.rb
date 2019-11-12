require_relative './file_encoder/yaml_encoder'
require_relative './statistic/statistic'

file_encoder = YamlEncoder.new 'library.yml'
library = file_encoder.read

uncle_bob = Author.new('Robert Cecil Martin', 'Robert C. Martin (“Uncle Bob”) has been a programmer
since 1970. He is founder of Uncle Bob Consulting, LLC, and cofounder with his son Micah Martin of The Clean Coders LLC.
Martin has published dozens of articles in various trade journals and is a regular speaker at international conferences
and trade shows')
clean_code = Book.new('The clean code', uncle_bob)
me = Reader.new(
  name: 'Alex Yee',
  email: 'neishkasha.alexandr@gmail.com',
  city: 'Dnipro',
  street: 'Polya Avenue',
  house: '119'
)
order = Order.new(clean_code, me)

library.add_author(uncle_bob)
library.add_book(clean_code)
library.add_reader(me)
library.add_order(order)
library.add_order(order)
library.add_order(order)

statistics = Statistic.new library
puts statistics.top_readers 2
puts statistics.most_populars_books 3
puts statistics.count_readers_of_popular_books 2

file_encoder.store library
