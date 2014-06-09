class Book

  def title= (title)
    small = %w(and or in the of a an)
    @title = titleize(title)
  end

  def title
    @title
  end

  def titleize(str)
    little_words = %w(and or in the of a an)
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

  def first_word(str)
    str.split(' ')[0]
  end
end