class Product
  include Comparable

  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # Special method to compare products by price
  def <=>(other)
    @price <=> other.price
  end

  def display_info
    puts "Product: #{@name}, Price: #{@price}"
  end
end

p1 = Product.new("Mobile", 50000)
p2 = Product.new("Laptop", 80000)
p3 = Product.new("Tablet", 30000)

products = [p1, p2, p3]

puts "All Products:"
products.each do |p|
  p.display_info
end

puts "----------------"
puts "Comparison:"
puts "#{p1.name} > #{p2.name} ? #{p1 > p2}"
puts "#{p1.name} < #{p2.name} ? #{p1 < p2}"
puts "#{p1.name} == #{p2.name} ? #{p1 == p2}"

puts "----------------"
puts "Cheapest:"
products.min.display_info
puts "Most Expensive:"
products.max.display_info

puts "----------------"
puts "Sorted by price (low to high):"
products.sort.each do |p|
  p.display_info
end
