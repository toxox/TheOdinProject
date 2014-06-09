def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr)
  arr.inject(0) { |sum, n| sum + n}  
end

def multiply(*arg)
  arg.inject(1) { |sum, n| sum * n}  
end

def power(p1, p2)
  p1 ** p2
end

def factorial(n)
  (1..n).inject(:*)
end