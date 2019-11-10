class FileManager
  def initialize(library, filename)
    @library = library
    @file = File.open(filename)
  end

  def self.get_instance(library, filename)
    extension = filename.split('.').last
    case extension
    when 'json'
      JsonFileManager.new library, filename
    else
      raise FileExtensionError "Extension '#{extension}' is not supported"
    end
  end

  def read
    raise NoMethodError 'Method is missing'
  end

  def store
    raise NoMethodError 'Method is missing'
  end
end