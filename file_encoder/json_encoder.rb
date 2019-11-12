require_relative './file_encoder'
require 'json'

class JsonFileEncoder < FileEncoder
  def read
    content = File.read(@filename)
    JSON.parse(content)
  rescue StandardError
    nil
  end

  def store(library)
    data = library.to_hash
    File.open(@filename, 'w') do |file|
      json = JSON.generate(data)
      file.write(json)
    end
  end
end
