# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    sum = 0
    arr.each {|x| sum += x}
    return sum
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  else
    return arr.sort[-1] + arr.sort[-2]
    #ruby is pass-by-value
  end
end

def sum_to_n? arr, n
  if arr.length == 1 || arr.empty?
    return false
  else
    arr = arr.sort #ahh remember pass by value!
    a1 = 0
    a2 = arr.length - 1
    while a1 < a2
      sum = arr[a1] + arr[a2]
      if sum == n
        return true
      elsif sum < n
        a1 += 1
      else #sum > n
        a2 -= 1
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s[0] =~ /[^a-zA-Z]/
    return false
  else
    if s =~ /\A[^aeiouAEIOU]/
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  s = s.to_i
  if s == 0 # to_i function returns 0 if the number is invalid
    return false
  end
  if s % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  
  def initialize(i, p)
    if p <= 0 || i.empty?
      raise ArgumentError
    else
     @isbn, @price = i, p
    end
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string()
    p = @price.to_f.round(2)
    
    # credit to http://stackoverflow.com/questions/15900537/to-d-to-always-return-2-decimals-places-in-ruby
    
    return '$' + '%.2f'%p.to_s
  end
  
end
