 class Rectangle
      def initialize(length,breadth)
        @length=length
        @breadth=breadth
      end
      def perimeter
        2*(@length+@breadth)
      end
    end
    r1=Rectangle.new(10,6)
    puts r1.perimeter
