array=[10,15,20,25,30,35,40]
new_array=[]
array.each do|n|
if n>20
new_array<<n
else
puts "number is less then 20"
end
end
p new_array
