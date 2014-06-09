class Temperature
  def initialize(options)
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit
    return @f if @f
    @c * 9.0/5.0 + 32
  end

  def in_celsius
    return @c if @c
    (@f - 32) * 5.0/9.0
  end

  def self.from_celsius(temp)
    new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(c)
    super(c: c)    
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(f: f)    
  end
end