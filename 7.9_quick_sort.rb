def partition(array)
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
  
  left.push(pivot) + right
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
