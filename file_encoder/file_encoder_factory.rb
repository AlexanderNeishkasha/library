require_relative './json_encoder'
require_relative './yaml_encoder'

class FileEncoderFactory
  def self.create(filename)
    extension = filename.split('.').last
    case extension
    when 'json'
      JsonFileEncoder.new filename
    when 'yml'
      YamlEncoder.new filename
    else
      raise FileExtensionError "Extension '#{extension}' is not supported"
    end
  end
end
