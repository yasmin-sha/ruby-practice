list = []

list.push("milk")
list.push("bread")
list.push("eggs")

list.delete("bread")

puts "Items: #{list}"

if list.include?("milk")
  puts "milk exists."
else
  puts "milk not found."
end
