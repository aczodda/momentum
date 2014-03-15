require 'yaml'

class Configuration

  def self.load
    @@config = YAML.load_file(File.dirname(__FILE__) + "/../config.yml")
  end

  def self.[] key
    @@config[key]
  end

  def self.[]= key, value
    @@config[key] = value
  end

end

Configuration.load