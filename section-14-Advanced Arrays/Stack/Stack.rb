class Stack
    def initialize(capacity)
        @store=Array.new
        @capacity=capacity
    end
    def push(num)
                if @store.size < @capacity
            @store.push(num)
        else
            puts "stack is full "
        end
        self
    end
    def pop
        @store.pop
    end
    def look
        @store.last
    end
    def size
        @store.size
    end

end
stack=Stack.new(4)
stack.push(20)
stack.push(44)
stack.push(55)
stack.push(23)
p stack.size
p stack.look
stack.push(50)
p stack.size
p stack.pop
p stack.pop
p stack.size
p stack.look
