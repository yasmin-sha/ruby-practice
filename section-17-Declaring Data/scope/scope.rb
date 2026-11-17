def scope
  on_the_side= "hi, friends"
  puts " from the inside :#{defined?(on_the_side).inspect}"
end
scope
puts "from the outside:#{defined?(on_the_side).inspect}"
