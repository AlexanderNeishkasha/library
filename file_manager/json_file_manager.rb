require_relative './file_manager'
require 'json'

class JsonFileManager < FileManager
  def read
    file = File.open(@filename)
    content = file.read
    data = JSON.parse(content)
    @library.from_hash(data)
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