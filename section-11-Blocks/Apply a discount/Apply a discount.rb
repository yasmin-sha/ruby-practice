discount=lambda{|price,discount_per|price-(price*discount_per/100.0)}
puts discount.call(2000,30)
