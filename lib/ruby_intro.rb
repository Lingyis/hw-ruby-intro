# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length >= 1
    arr.reduce(:+)
  else
    0
  end
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    sum arr.sort[-2..-1]
  end
end

def sum_to_n? arr, n
  arr.permutation(2).any? {|pair| sum(pair) == n}
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  !! (/[a-z&&[^aeiou]]/i.match s[0])
end

def binary_multiple_of_4? s
  if /^[01]+$/.match s
    s.to_i(2) % 4 == 0
  else
    false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn_str, price_f)
    print isbn_str
    if isbn_str == '' or !isbn_str or price_f <= 0.0
      raise ArgumentError
    end
    @isbn = isbn_str
    @price = price_f
  end
  def price_as_string 
    # like $33.98
    "$%.2f" % @price
  end
end
