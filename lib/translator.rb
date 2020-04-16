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
  found = true
  emoticons = load_library(path)
  emoticons.each do |key, value|
    if value[:japanese] == emoticon
      puts value[:english]
      found = true
    else
      found = false
    end
  end
  if found == false
    puts "Sorry"
end

def get_english_meaning
  # code goes here
end