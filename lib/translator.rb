require 'yaml'

def load_library(path)
  YAML.load_file(path)
  dictionary = {
    get_meaning: {},
    get_emoticon: {}
  }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end