def translate_word(word)
  arr = word.split('')
  new_arr = []
  until /[aieou]/.match(arr[0])
    letter = arr.shift
    new_arr.push(letter)
    if letter == 'q' && arr[0] == 'u'
      arr.shift
      new_arr.push('u')
    end
  end
  result = arr.join + new_arr.join + "ay"
end

def translate(string)
  words = string.split(' ')
  new_words = words.map { |word| translate_word(word) }
  new_words.join(' ')
end