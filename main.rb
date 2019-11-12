require_relative './load'

file_encoder = YamlEncoder.new('library.yml')
library = file_encoder.read
generator = Generator.new library

rand(1..3).times do
  generator.fake_order
end

statistics = Statistic.new library
puts statistics.top_readers
puts statistics.most_populars_books
puts statistics.count_readers_of_popular_books

file_encoder.store library
