class Caesar
  attr_accessor :text, :shift

  def initialize(text, shift)
    @text = text
    @shift = shift
    @low = ("a"..'z').to_a
    @caps = ("A"..'Z').to_a
  end

  def switch
    @text.chars.map do |ch|
      if !ch.ord.between?(65, 90) && !ch.ord.between?(97, 122)
        ch
      elsif ch == ch.downcase
        @low[(@low.index(ch) + @shift) % 26]
      else
        @caps[(@caps.index(ch) + @shift) % 26]
      end
    end
  end

  def output
    switch.join
  end
end

testan = Caesar.new("What a string!", 5)
p testan.output