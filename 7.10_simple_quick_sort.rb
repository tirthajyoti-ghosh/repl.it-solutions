def simple_quicksort(array)
  # Exit condition
  return array if array.length <= 1
  
  # Formula:
  # Items less than pivot goes to the left
  # Items greater than pivot goes to the right
  # Repeat
	pivot = array.shift
	left = []
	right = []
	
	array.each do |item|
		if item > pivot
			right << item
		else
			left << item
		end
	end
  
  # Repeat the above process
	res = simple_quicksort(left).push(pivot) + simple_quicksort(right)
	puts res.join(' ')
	
	res
end

p simple_quicksort([4, 5, 3, 9, 1])
