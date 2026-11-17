class Queue
    def initialize(capacity)
        @store=Array.new
        @capacity=capacity
    end
    def enqueue(num)
        if @store.size< @capacity
            @store.unshift(num)
        else
            puts "queue is full "
        end
        self
    end
    def dequeue
        @store.pop
    end

    def size
        @store.size
    end
end

queue = Queue.new(3)
queue.enqueue("ali")
queue.enqueue("umar")
queue.enqueue("awais")
queue.enqueue("noor")
p queue.size
queue.enqueue("samina")
p queue.size
p queue.dequeue
p queue.size
