require_relative './autoload'

file_encoder = YamlEncoder.new('library.yml')
library = file_encoder.read
generator = Generator.new library

generator.cross_readers_and_books(1, 1).each { |entity| library.add_entity entity }

statistics = Statistic.new library
puts 'Top readers:'
puts statistics.top_readers
puts 'Most popular books:'
puts statistics.most_populars_books
popular_books = 3
puts "Count readers of #{popular_books} popular books: #{statistics.count_readers_of_popular_books(popular_books)}"

file_encoder.store library
