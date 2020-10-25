def time_scheduler(array)
  result = []
  
  # Extract events from raw array
  # raw_array = [1, 5, 2, 4]
  events = (0...array.length).step(2).collect { |i| [array[i], array[i+1]] }
  #  => events = [[1, 5], [2, 4]]

  # Sort events by finish time
  events.sort_by! { |event| event[1] }
  # => events = [[2, 4], [1, 5]]

  # Initially the first event is selected
  result << events[0]
  
  # Set latest to be the first event initially
  latest = events[0]
  
  # Loop from second event to last event
	(1...events.size).each do |i|
		
		# Set current
		current = events[i]
		
		# Formula:
		# if start time of current is more than finish time of latest,
		# then latest and current events are not overlapping i.e., valid
		
		if current[0] >= latest[1]
			
			# Push current to result
			result << current
			
			# Now latest becomes current for the next iteration
			latest = current
		end
	end
	
	result
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
