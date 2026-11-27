module Payment
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def payment_type
      "Online Payment"
    end
  end
end

class Order
  include Payment
end

puts Order.payment_type
