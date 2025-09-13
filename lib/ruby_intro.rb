# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each { |num| sum += num }
  sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  max_two = arr.max(2)
  sum(max_two)
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  h = {}
  arr.each do |num|
    complement = n - num
    return true if h.include?(complement)

    h[num] = 0
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  res = 'Hello, '
  res << name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return false if s.empty?

  first_letter = s[0].downcase
  first_letter.match?(/[bcdfghjklmnpqrstvwxyz]/)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false unless s.match?(/\A[10]+\z/)

  num = s.to_i(2)
  (num % 4).zero?
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{format('%.2f', price)}"
  end
end
