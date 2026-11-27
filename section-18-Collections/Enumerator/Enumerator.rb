numbers = [10, 20, 30, 40]

enumerator = numbers.each
puts enumerator.class
puts enumerator.next
puts enumerator.next
puts enumerator.next

numbers = [10, 20, 30, 40]

enumerator = numbers.each_with_index
puts enumerator.class
puts enumerator.next
puts enumerator.next
puts enumerator.next
