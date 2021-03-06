# Start with your code from LinkedList challenge.

class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    new_node = Node.new(number)
    
    if @head.nil?
      @head = new_node
      return
    end
    
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    
    current_node.next_node = new_node
  end
  
  def add_at(index,item)
    new_node = Node.new(item)
    
    if @head.nil?
      @head = new_node
    end
    
    if index == 0
      this_node = Node.new(item, @head)
      @head = this_node
    end
    
    if index > 0
      before_node = @head
 
      (index-1).times do
        before_node = before_node.next_node
      end 
      
      after_node = before_node.next_node
      before_node.next_node = new_node
      new_node.next_node = after_node
    end
  end


  def get(index)
    current_node = @head
    
    index.times do
      current_node = current_node.next_node  
    end
    
    current_node.value
  end
  
  def remove(index)
    if @head.nil?
      puts "the storage is empty"
    end
    
    if index == 0
      current_node = @head
      new_current_node = current_node.next_node
      @head = new_current_node
    end
      
    before_node = @head
    after_node = @head
    
    (index-1).times do
      before_node = before_node.next_node  
    end
    
    (index+1).times do
      after_node = after_node.next_node  
    end
    
    before_node.next_node = after_node
  end
  
  private
  
  def get_node(index)
    current_node = @head
    
    index.times do
      current_node = current_node.next_node
    end
    
    current_node
  end
end

class Stack
  def initialize
    @list = LinkedList.new  
  end
  
  def push(number)
    @list.add_at(0, number)
  end
  
  def pop
    top = @list.get(0)
    
    @list.remove(0)
    
    top
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
