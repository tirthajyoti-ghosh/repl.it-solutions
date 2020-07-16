def sqrt(n)
  sqrt_recursive(n, 0, n)
end

def sqrt_recursive(n, min, max)
  guess = (min + max) / 2
  
  guess_squared = guess * guess
  
  if guess_squared == n
  	return guess
  elsif guess_squared > n
  	sqrt_recursive(n, min, guess - 1)
  else
  	sqrt_recursive(n, guess + 1, max)
  end
end

puts sqrt(25)
puts sqrt(7056)
