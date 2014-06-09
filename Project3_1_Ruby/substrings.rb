def substrings(string, dictionary)
  hash = {}

  new_string = string.downcase

  dictionary.each do |word|
    hash[word] = new_string.scan(word).count if new_string.include?(word)
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i",
  "low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)