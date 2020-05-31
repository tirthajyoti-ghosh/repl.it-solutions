# Start with your code from LinkedList challenge.
class Node
	#your node code here
	attr_accessor :value, :next_node

	def initialize(value, next_node = nil)
		@value = value
		@next_node = next_node
	end
end

class LinkedList
  def add(number)
  	new_node = Node.new(number)

  	if @head.nil?
	  	@head = new_node
		  @tail = new_node
	  else
		  @tail.next_node = new_node
		  @tail = new_node
	  end
  end

  def add_at(index, number)
  	new_node = Node.new(number)

  	if @head.nil?
	  	@head = new_node
		  @tail = new_node
	  elsif index == 0
		  new_node.next_node = @head
		  @head = new_node
	  else
		  previous_node = get_node(index - 1)
		  next_node = previous_node&.next_node
		  previous_node.next_node = new_node
		  new_node.next_node = next_node
	  end
  end
  
  def get(index)
  	node = get_node(index)
  	
  	node&.value
  end
  
  def remove(index)
  	if index == 0
		  value = @head.value
  		@head = @head&.next_node
  		return value
  	end
  	
  	previous_node = get_node(index - 1)
  	value = previous_node.next_node.value
  	previous_node.next_node = previous_node&.next_node&.next_node

  	if previous_node == @tail
  		@tail = previous_node
  	end
  	
  	value
  end

  
  private
  
  def get_node(index)
  	node = @head
  	
  	while index > 0 && node
  	  node = node.next_node
  	  index -= 1
  	end
  	
  	node
  end
end


class Queue
  def initialize
    @list = LinkedList.new
  end
  
  def add(number)
    @list.add(number)
  end
  
  def remove
    return -1 if @list.get(0).nil?
    
    @list.remove(0)
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
