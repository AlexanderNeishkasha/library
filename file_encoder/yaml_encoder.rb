require_relative './file_encoder'
require_relative '../entities/library'
require 'yaml'

class YamlEncoder < FileEncoder
  def read
    content = File.read(@filename)
    YAML.load content
  rescue StandardError
    Library.new
  end

  def store(library)
    File.open(@filename, 'w') { |file| file.write(library.to_yaml) }
  end
end
