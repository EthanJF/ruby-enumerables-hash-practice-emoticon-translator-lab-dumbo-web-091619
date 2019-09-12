# require modules here
require "yaml"

def load_library(file_path)
  file = YAML.load_file(file_path)
  new_hash = {"get_meaning": {}, "get_emoticon": {}}
  
  file.each do |key,value|
<<<<<<< HEAD
    new_hash[:get_meaning].store(value[1],key)
    new_hash[:get_emoticon].store(value[0],value[1])
=======
    new_hash[:get_meaning].store(value,key)
>>>>>>> 3c8ca0b3ce4f794b479bfc5b3e5338fb7fb20a70
  end
  
 new_hash
  
end

def get_japanese_emoticon(file_path, emoticon)
  loaded = load_library(file_path)

  emoticons = loaded[:get_emoticon]
  
  emoticons.each do |key,value|
    if key == emoticon
      return value
    end
  end
  
  return "Sorry, that emoticon was not found"
end

<<<<<<< HEAD
def get_english_meaning(file_path, emoticon)
  loaded = load_library(file_path)

  meaning = loaded[:get_meaning]
  
  meaning.each do |key,value|
    if key == emoticon
      return value
    end
  end
  
  return "Sorry, that emoticon was not found"
end
=======
def get_english_meaning
  # code goes here
end

load_library("./lib/emoticons.yml")
>>>>>>> 3c8ca0b3ce4f794b479bfc5b3e5338fb7fb20a70
