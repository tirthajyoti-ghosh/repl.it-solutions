def move(start, goal)
  via = ([1, 2, 3] - [start, goal]).first
  
  result = '';
  
  result += move_text(start, via)
  
  result += move_text(start, goal)
  
  result += move_text(via, goal)
  
  result
end

def move_text(from, to)
	"#{from}->#{to} "
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
