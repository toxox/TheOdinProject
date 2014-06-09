class Dictionary
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    entry.is_a?(Hash) ? @entries.merge!(entry) : @entries.merge!(entry => nil)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(key)
    @entries.select { |k| k =~ /(#{key})/ }
  end

  def printable
    keywords.map { |key| "[#{key}]" + " " + "\"#{entries[key]}\""}.join("\n")
  end
end