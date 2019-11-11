require_relative './json_encoder'

class FileManagerFactory
  def self.create(library, filename)
    extension = filename.split('.').last
    case extension
    when 'json'
      JsonFileEncoder.new library, filename
    else
      raise FileExtensionError "Extension '#{extension}' is not supported"
    end
  end
end
