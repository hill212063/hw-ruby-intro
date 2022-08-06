# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  len = arr.length
  if len ==0
    return 0
  elsif len == 1
    return arr[0]
  end
  arr.sort!{|first,second| second<=>first}
  arr[0]+arr[1]
end

def sum_to_n? arr, n
  len = arr.length
  if len ==0 or len==1
    return false
  end
  arr.each_with_index do |elem,index|
    if index+1 >= len
      return false
    end
    if elem+arr[index+1] == n
      return true
    end
  end

end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  rx = {special_n_number:/^[0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]*$/}
  if s.length == 0 || s[0].match(rx[:special_n_number])
    return false
  end
  vowels = ["a","e","i","o","u"]
  vowels.each {|vowel| return false if s[0].downcase == vowel}
  return true

end

def binary_multiple_of_4? s
  rx = {binary:/^[0-1]+$/}
  if (s.match(rx[:binary])) and (s.to_i(2).is_a? Integer)
    if s.to_i(2)%4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if !(isbn.is_a? String) || (isbn.empty?) || (price<=0)
      raise ArgumentError.new "invalid input"
    else
      @isbn=isbn
      @price=price
    end
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    sprintf("$%0.2f",@price)
  end
end
