require 'yaml'

class YamlEncoder
  def initialize(filename)
    @filename = filename
  end

  def read
    content = File.read(@filename)
    library = YAML.load(content)
    library.is_a?(Library) ? library : Library.new
  rescue Errno::ENOENT
    Library.new
  end

  def store(library)
    File.open(@filename, 'w') { |file| file.write(library.to_yaml) }
  end
end
