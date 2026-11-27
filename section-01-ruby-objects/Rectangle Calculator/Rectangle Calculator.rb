class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end

  def perimeter
    2 * (@width + @height)
  end

  def square?
    @width == @height
  end

  def display_info
    puts "Width: #{@width}"
    puts "Height: #{@height}"
    puts "Area: #{area}"
    puts "Perimeter: #{perimeter}"
    if square?
      puts "Is Square: Yes"
    else
      puts "Is Square: No"
    end
  end
end

r1 = Rectangle.new(10, 5)
r2 = Rectangle.new(7, 7)

rectangles = [r1, r2]

rectangles.each_with_index do |r, index|
  puts "Rectangle #{index + 1}:"
  r.display_info
  puts "----------------"
end
