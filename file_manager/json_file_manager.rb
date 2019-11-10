require_relative './file_manager'
require 'json'

class JsonFileManager < FileManager
  def read
    content = File.readlines(@filename)
    data = JSON.parse(content)
    @library.authors = data[:authors]
    @library.books = data[:books]
    @library.readers = data[:readers]
  rescue StandardError
    nil
  end

  def store
    data = @library.to_hash
    File.open(@filename, 'w') do |file|
      json = JSON.generate(data)
      file.write(json)
    end
  end
end