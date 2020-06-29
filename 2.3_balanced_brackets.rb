class Node
	attr_accessor :value, :next_node
	
	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

class Stack
	def initialize
		@head = nil
	end
	
	def push(value)
		new_node = Node.new(value)
		
		if empty?
			@head = new_node
			return
		else
			new_node.next_node = @head
			@head = new_node
		end
	end
	
	def pop
		# if empty?
		# 	return -1
		# else
			value = @head.value
			next_node = @head.next_node
			@head = next_node
		# end
		
		value
	end
	
	def empty?
		@head.nil?
	end
end

def balanced_brackets?(string)
	string.gsub!(/[a-zA-Z]+/, '')
	
	stack = Stack.new
	
  (0...string.length).each do |i|
  	if (string[i] == '(') || (string[i] == '{') || (string[i] == '[')
  		stack.push(string[i])
  	else
  		return false if stack.empty?
  		
  		top = stack.pop
      if (top == '(' && string[i] != ')') || (top == '{' && string[i] != '}') || (top == '[' && string[i] != ']')
        return false
      end
    end
  end

  stack.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)[]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
