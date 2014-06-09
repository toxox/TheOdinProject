def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  arr = []
  n.times { arr << str }
  arr.join(" ")
end

def start_of_word(str, n)
  str[0...n]
end

def first_word(str)
  str.split(' ')[0]
end

def titleize(str)
  
  little_words = ['the', 'and', 'over']
  words = str.split(' ')
  first_word(str)[0] = first_word(str)[0].upcase
  words.map do |word|
    if little_words.include?(words[0])
      word[0] = word[0].upcase
    else
      word[0] = word[0].upcase unless little_words.include?(word)
    end
  end
  words.join(' ')
end