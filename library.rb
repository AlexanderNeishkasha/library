class Library
  def initialize(filename = 'library.json')
    @authors = []
    @books = []
    @readers = []
    @file_manager = FileManager.get_instance(self, filename)
  end

  def add_author(author)
    @authors.push(author) if (author.is_a? Author)
  end

  def add_book(book)
    @books.push(book) if (book.is_a? Book)
  end

  def add_reader(reader)
    @readers.push(reader) if (reader.is_a? Reader)
  end
end
