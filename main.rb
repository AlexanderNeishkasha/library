require './library'

library = Library.new
uncle_bob = Author.new('Robert Cecil Martin', 'Robert C. Martin (“Uncle Bob”) has been a programmer
since 1970. He is founder of Uncle Bob Consulting, LLC, and cofounder with his son Micah Martin of The Clean Coders LLC.
Martin has published dozens of articles in various trade journals and is a regular speaker at international conferences
and trade shows')
clean_code = Book.new('The clean code', uncle_bob)
me = Reader.new('Alex', 'neishkasha.alexandr@gmail.com', 'Dnipro', 'Polya Avenue', '119')
order = Order.new(clean_code, me)
library.add_author(uncle_bob)
library.add_book(clean_code)
library.add_reader(me)
library.add_order(order)
library.store
