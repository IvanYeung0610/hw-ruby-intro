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
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  # YOUR CODE HERE
end
