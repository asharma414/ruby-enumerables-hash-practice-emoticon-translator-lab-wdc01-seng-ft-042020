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
  found = false
  emoticons = load_library(path)
  emoticons.each do |key, value|
    if value[:english] == emoticon
      puts value[:japanese]
      found = true
    end
  end
  if found == false
    puts "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end