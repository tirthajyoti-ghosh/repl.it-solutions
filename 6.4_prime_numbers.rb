require 'set'

# Sieve of Eratosthenes:
# A method of finding prime numbers from a given range
# by taking the first number and removing all it's multiples
# from the range before moving to the next number and 
# repeating the same process.

def sieve
  # A range is given
  sieve = Set.new(2..10000)
  
  # Loop through each number in Set
  # Note: Any other iterators won't work as they are obviously slower than iterating through a Set directly.
  sieve.each do |item|
    
    # 2 is the first prime number
    n = 2
    
    # If n's multiple is less than upper range(10000)
    while n * item <= 10000
      
      # Delete that multiple from Set
  		sieve.delete(item * n)
      
      # Move to the next number
  		n += 1
    end
  end

  sieve
end

def number_of_primes(arr)
  list = sieve
  
  prime_count = 0
  arr.each do |e|
  	prime_count += 1 if list.include?(e)
  end
  
  prime_count
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3
