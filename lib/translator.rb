require 'yaml'

def load_library(path)
  emoji = YAML.load_file(path)
  dictionary = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emoji.each do |definition, faces|
    dictionary["get_meaning"][faces[1]] = definition
    dictionary["get_emoticon"][faces[0]] = faces[1]
  end
  dictionary
end

def get_japanese_emoticon(path, emoticon)
  dictionary = load_library(path)
  dictionary["get_emoticon"][emoticon]
  
end

def get_english_meaning
  # code goes here
end