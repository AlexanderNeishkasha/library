require_relative './autoload'

file_encoder = YamlEncoder.new('library.yml')
library = file_encoder.read
generator = Generator.new library

generator.generate_fake_entities(2, 2).each { |entity| library.add_entity entity }
generator.generate_fake_entities(1, 3).each { |entity| library.add_entity entity }
generator.generate_fake_entities(3, 1).each { |entity| library.add_entity entity }

statistics = Statistic.new library
puts 'Top readers:'
puts statistics.top_readers
puts 'Most popular books:'
puts statistics.most_populars_books
popular_books = 3
puts "Count readers of #{popular_books} popular books: #{statistics.count_readers_of_popular_books(popular_books)}"

file_encoder.store library
