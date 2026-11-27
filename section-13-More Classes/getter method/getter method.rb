     class Item 
        def initialize(description,color)
            @description=description
            @color=color
        end
        def description
            "#{@description} | #{@color}"
        end
      end

      item = Item.new("car", "black")
      puts item.description
