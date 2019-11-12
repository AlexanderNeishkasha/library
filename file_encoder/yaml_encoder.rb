require 'yaml'

class YamlEncoder
  def initialize(filename)
    @filename = filename
  end

  def read
    content = File.read(@filename)
    YAML.load(content) || Library.new
  rescue Errno::ENOENT
    Library.new
  end

  def store(library)
    File.open(@filename, 'w') { |file| file.write(library.to_yaml) }
  end
end
