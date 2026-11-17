students=[
    ["ali",50,90],
    ["sara",50,60],
    ["umar", 77,87]
]
total=students.map do|name,mark1,mark2|
    total=mark1 + mark2
    puts "#{name}:#{total}"
    total
end
p total
