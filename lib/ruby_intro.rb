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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
