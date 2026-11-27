 restaurant_manu={pizza:2000,cake:1000,icecream:500}
  puts original prices
  restaurant_manu.each do |item,price|
    puts "restaurant itemes#{item} :#{price}"

     restaurant_manu.each do |item,price|
      restaurant_manu[item]=(price*1.10).round(2)
      puts "restaurant itemes#{item} :#{price}"

      manu=Hash.new(0)
      puts manu["burger"]
      
      pair=[[:sandwich,500],[:choclate,200]]
      new_Hash=Hash[pair]
      puts new_Hash
     end
    end
