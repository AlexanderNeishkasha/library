require_relative './json_file_manager'

class FileManager
  def initialize(library, filename)
    @library, @filename = library, filename
  end

  def read
    raise NoMethodError 'Method is missing'
  end

  def store
    raise NoMethodError 'Method is missing'
  end
end