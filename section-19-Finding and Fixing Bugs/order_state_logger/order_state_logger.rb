
require 'logger'

class Order
  def initialize(order_items, customer)
    @order_items = order_items
    @customer = customer
    @state = :new
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO
    @logger.info("Order created. customer: #{@customer}, items: #{@order_items}, state: #{@state}")
  end

  def procedure(vendor)
    begin
      raise "cannot procedure order in state: #{@state}" unless @state == :new

      @vendor = vendor
      @state = :procured
      @logger.info("Order procured. state: #{@state}, vendor: #{@vendor}")
    rescue StandardError => e
      @logger.error("Procurement failed: #{e.message}")
      raise
    end
  end

  def pack
    begin
      raise "cannot pack order in state: #{@state}" unless @state == :procured

      @state = :packed
      @logger.info("Order packed. state: #{@state}, items: #{@order_items}")
    rescue StandardError => e
      @logger.error("Packing failed: #{e.message}")
      raise
    end
  end

  def ship(shipping_address)
    begin
      raise "cannot ship order in state: #{@state}" unless @state == :packed

      @state = :shipped
      @shipping_address = shipping_address
      @logger.info("Order shipped. state: #{@state}, items: #{@order_items}, shipping address: #{@shipping_address}")
    rescue StandardError => e
      @logger.error("Shipping failed: #{e.message}")
      raise
    end
  end
end

order = Order.new(["laptop", "phone"], "ali")
order.procedure("awesome supplier")
order.pack
order.ship("pindi")
