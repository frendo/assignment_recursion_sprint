#iterative version
def factorial(n)
  sum = 1
  until n == 0
    sum *= n
    n -= 1
  end
 sum
end

def factorial_i(n)
  (1..n).inject(:*) || 1
end

#recursive
def factorial_r(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

def palindrome_r(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end
def palindrome_i(string)
    idx = 0
  
    while idx < string.length
      if string[idx] != string[(string.length - 1) -  idx]
        return false
      end
    idx += 1
    end
    return true
end
def sumdig_i(num)
  result = 0

  i = 0
  while i <= num
    result += i
    i += 1
  end

  return result
end
def sumdig_r(number, length_of_number)
  if number < 10
    return number
  else
    digit = number % 10
    result = (digit ** length_of_number)
    result += sum_of_digits(number /=  10, length_of_number)
  end
end
