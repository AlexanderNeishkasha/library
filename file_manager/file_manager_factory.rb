require_relative 'json_file_manager'

class FileManagerFactory
  def self.create(library, filename)
    extension = filename.split('.').last
    case extension
    when 'json'
      JsonFileManager.new library, filename
    else
      raise FileExtensionError "Extension '#{extension}' is not supported"
    end
  end
end