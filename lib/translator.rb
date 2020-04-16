require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {}
  emoticons.each do |key, value|
    hash[key] = { :english => value[0], :japanese => value[1] }
  end
  hash
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  binding.pry
end

def get_english_meaning
  # code goes here
end