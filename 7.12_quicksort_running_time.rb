def insertion_sort(array)
	(1...array.length).each do |i|
		current = array[i]
		hole = i
		
		while(hole > 0 && array[hole - 1] > current)
			array[hole] = array[hole - 1]
			
			# Increase counter when swapped
			$insertion_sort_count += 1
			
			hole -= 1
		end
		
		array[hole] = current
	end
end

def partition(array, first, last)
	pivot = array[last]
	p_i = first
	
	(first...last).each do |i|
		if array[i] < pivot
			array[i], array[p_i] = array[p_i], array[i]
			
			# Increase counter when swapped
			$quick_sort_count += 1
			
			p_i += 1
		end
	end
	
	array[p_i], array[last] = array[last], array[p_i]
	
	# Increase counter when swapped
	$quick_sort_count += 1
	
	p_i
end

def quick_sort(array, first = 0, last = array.length - 1)
	return unless first < last
	
	p_i = partition(array, first, last)
	
	quick_sort(array, first, p_i - 1)
	quick_sort(array, p_i + 1, last)
end

def quicksort_running_time(array)
  $insertion_sort_count = 0
  $quick_sort_count = 0
  
  insertion_sort(array.clone)
  quick_sort(array.clone)
  
  $insertion_sort_count - $quick_sort_count
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
